USERS        = 100
TRANSACTIONS = 5
PRODUCTS     = 2

namespace :db do
  desc "Erase and fill database"
  task :populate => :environment do
    require 'populator'
    require 'faker'

    [User, Contact, Transaction, Product].each(&:delete_all)

    puts "create users"
    User.populate USERS do |user|
      user.email              = Faker::Internet.email
      user.encrypted_password = Faker::Internet.password
    end

    puts "creating contacts"
    Contact.populate USERS do |c|
      c.first_name         = Faker::Name.first_name
      c.last_name          = Faker::Name.last_name
      c.address            = Faker::Address.street_address
      c.secondary_address  = Faker::Address.secondary_address
      c.city               = Faker::Address.city
      c.state              = Faker::Address.state_abbr
      c.zipcode            = Faker::Address.zip
      c.country            = Faker::Address.country
    end

    puts "create transactions"
    Transaction.populate USERS * TRANSACTIONS do |t|
      t.price             = "#{Faker::Number.number(3)}.#{Faker::Number.number(2)}"
    end

    puts "creating transaction states"
    TransactionState.populate USERS * TRANSACTIONS do |ts|
      ts.description = Faker::Lorem.sentence(1)
    end

    puts "creating products"
    Product.populate USERS * TRANSACTIONS * PRODUCTS do |p|
      p.price         = "#{Faker::Number.number(2)}.#{Faker::Number.number(2)}"
      p.shipping_cost = Faker::Number.digit
      p.weight        = Faker::Number.digit
      p.name          = Faker::Commerce.product_name
      p.description   = Faker::Lorem.paragraph(2)
      p.tasting_notes = Faker::Lorem.paragraph(1)
    end

    puts "creating product types"
    ProductType.populate USERS * TRANSACTIONS * PRODUCTS do |pt|
      pt.description = Faker::Lorem.sentence(1)
    end

    ### BUILD ASSOCIATIONS ###

    puts "associating user << contact"
    contacts = Contact.all
    User.all.each_with_index do |u, i|
      u.contacts << contacts[i]
    end

    puts "associating user << transactions"
    transactions = Transaction.all
    User.all.each_with_index do |user, i|
      TRANSACTIONS.times do |multiplier|
        user.transactions << transactions[i * multiplier]
      end
    end

    puts "associating transaction << transaction_state"
    transaction_states = TransactionState.all
    Transaction.all.each_with_index do |t, i|
      t.update(transaction_state: transaction_states[i])
    end

    puts "associating transaction << products"
    products = Product.all
    Transaction.all.each_with_index do |t, i|
      PRODUCTS.times do |multiplier|
        t.products << products[i * multiplier]
      end
    end

    puts "associating products << product_type"
    product_types = ProductType.all
    Product.all.each_with_index do |p, i|
      p.product_types << product_types[i]
    end
  end
end
