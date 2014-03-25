class CreateMailingList < ActiveRecord::Migration
  def change
    create_table :mailing_lists do |t|
      t.string :email, null: false
      t.timestamps
    end
  end
end
