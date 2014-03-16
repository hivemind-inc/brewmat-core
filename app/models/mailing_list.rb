class MailingList < ActiveRecord::Base
  validates :email, presence: true
  validates :email, uniqueness: true
  validates_format_of :email, with: /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/
end
