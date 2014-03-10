class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.belongs_to :user

      t.string :zipcode, limit: 10
      t.string :address
      t.string :city
      t.string :country
      t.string :first_name
      t.string :last_name
      t.string :secondary_address
      t.string :state
    end
  end
end
