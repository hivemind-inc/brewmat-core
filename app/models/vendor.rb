class Vendor < ActiveRecord::Base
  belongs_to :user
  has_many :products
  has_many :images
end
