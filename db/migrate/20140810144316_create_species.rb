class CreateSpecies < ActiveRecord::Migration
  def change
    create_table :species do |t|
      t.belongs_to :user

      t.string :breed

      t.timestamps
    end
  end
end
