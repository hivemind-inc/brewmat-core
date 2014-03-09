class CreateUserType < ActiveRecord::Migration
  def change
    create_table :user_types do |t|
      t.belongs_to :user

      t.string :description
    end
  end
end
