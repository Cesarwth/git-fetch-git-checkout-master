class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.text :address
      t.string :phone
      t.string :email
      t.integer :status

      t.timestamps
    end
  end
end
