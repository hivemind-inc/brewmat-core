class Transaction < ActiveRecord::Base
  belongs_to :user
  has_one :transaction_state
end
