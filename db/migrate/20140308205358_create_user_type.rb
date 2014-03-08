class CreateUserType < ActiveRecord::Migration
  def change
    create_table :user_types do |t|
      t.string :description
    end
  end
end
