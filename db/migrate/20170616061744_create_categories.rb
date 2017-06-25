class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :title
      t.text :description
      t.integer :position
      t.string :image
      t.integer :status

      t.timestamps
    end
  end
end
