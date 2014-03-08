class Transaction < ActiveRecord::Base
  belongs_to :user
  has_one :transaction_state
  has_and_belongs_to_many :products
end
