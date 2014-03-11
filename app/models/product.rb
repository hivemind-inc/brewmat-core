class Product < ActiveRecord::Base
  has_and_belongs_to_many :transactions
  belongs_to :vendor
  has_many :product_types
  has_many :ratings
end
