class Product < ActiveRecord::Base
  has_and_belongs_to_many :transactions
  has_many :product_types
  belongs_to :vendor
end
