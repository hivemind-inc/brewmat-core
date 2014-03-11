class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  has_one :user_type
  has_one :vendor
  has_many :contacts
  has_many :transactions
  has_many :product_ratings
end
