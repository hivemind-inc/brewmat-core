class User < ActiveRecord::Base
  has_many :species
  has_many :contacts
  has_many :orders
end
