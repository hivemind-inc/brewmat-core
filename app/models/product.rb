class Product < ActiveRecord::Base
  has_and_belongs_to_many :transactions
  has_one :product_type
  belongs_to :vendor
end
