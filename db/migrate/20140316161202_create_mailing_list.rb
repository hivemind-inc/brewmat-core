class CreateMailingList < ActiveRecord::Migration
  def change
    create_table :mailing_lists do |t|
      t.boolean :subscribed, default: true
      t.string :email, null: false
      t.timestamp
    end
  end
end
