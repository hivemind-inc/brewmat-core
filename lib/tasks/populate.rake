NUMBER_OF_USERS = 100
TRANSACTIONS_PER_USER = 5

namespace :db do
  desc "Erase and fill database"
  task :populate => :environment do
    require 'populator'
    require 'faker'

    [User, Contact, Transaction].each(&:delete_all)

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

    # associate: user => contact
    contacts = Contact.all
    User.all.each_with_index do |user, index|
      user.contacts << contacts[index]
    end

    # associate user => transaction
    transactions = Transaction.all
    User.all.each_with_index do |user, index|
      TRANSACTIONS_PER_USER.times do |multiplier|
        user.transactions << transactions[index * multiplier]
      end
    end
  end
end