class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.belongs_to :vendor

      t.string :url
      t.string :image_type
      t.string :description

      t.timestamps
    end
  end
end
