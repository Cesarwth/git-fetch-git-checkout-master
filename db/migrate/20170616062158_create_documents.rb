class CreateDocuments < ActiveRecord::Migration[5.1]
  def change
    create_table :documents do |t|
      t.references :category, foreign_key: true
      t.string :file_name
      t.integer :status

      t.timestamps
    end
  end
end
