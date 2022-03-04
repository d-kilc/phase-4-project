class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.float :original_cost
      t.string :brand
      t.integer :year_manufactured
      t.text :image_url
      t.text :description

      t.timestamps
    end
  end
end
