class CreateRotatingImages < ActiveRecord::Migration[5.1]
  def change
    create_table :rotating_images do |t|
      t.string :name
      t.string :file_name
      t.integer :position
      t.integer :status

      t.timestamps
    end
  end
end
