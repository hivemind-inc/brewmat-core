NUMBER_OF_USERS = 100
TRANSACTIONS_PER_USER = 5
PRODUCTS_PER_TRANSACTION = 2

namespace :db do
  desc "Erase and fill database"
  task :populate => :environment do
    require 'populator'
    require 'faker'

    [User, Contact, Transaction, Product].each(&:delete_all)

    User.populate NUMBER_OF_USERS do |user|
      user.email              = Faker::Internet.email
      user.encrypted_password = Faker::Internet.password
    end

    Contact.populate NUMBER_OF_USERS do |contact|
      contact.first_name         = Faker::Name.first_name
      contact.last_name          = Faker::Name.last_name
      contact.address            = Faker::Address.street_address
      contact.secondary_address  = Faker::Address.secondary_address
      contact.city               = Faker::Address.city
      contact.state              = Faker::Address.state_abbr
      contact.zipcode            = Faker::Address.zip
      contact.country            = Faker::Address.country
    end

    Transaction.populate NUMBER_OF_USERS * TRANSACTIONS_PER_USER do |transaction|
      transaction.state_id = Faker::Number.digit
    end

    Product.populate NUMBER_OF_USERS * TRANSACTIONS_PER_USER * PRODUCTS_PER_TRANSACTION do |product|
      product.price         = Faker::Number.number(2)
      product.shipping_cost = Faker::Number.digit
      product.weight        = Faker::Number.digit
      product.type_id       = Faker::Number.digit
      product.name          = Faker::Commerce.product_name
      product.description   = Faker::Lorem.paragraph(2)
      product.tasting_notes = Faker::Lorem.paragraph(1)
    end

    # associate: user w/ contact
    contacts = Contact.all
    User.all.each_with_index do |user, index|
      user.contacts << contacts[index]
    end

    # associate user w/ transaction
    transactions = Transaction.all
    User.all.each_with_index do |user, index|
      TRANSACTIONS_PER_USER.times do |multiplier|
        user.transactions << transactions[index * multiplier]
      end
    end

    # associate transaction w/ products
    products = Product.all
    Transaction.all.each_with_index do |transaction, index|
      PRODUCTS_PER_TRANSACTION.times do |multiplier|
        transaction.products << products[index * multiplier]
      end
    end
  end
end