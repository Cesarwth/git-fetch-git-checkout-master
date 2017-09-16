class AddAttachmentDoc3ToCategories < ActiveRecord::Migration::Current
  def self.up
    change_table :categories do |t|
      t.attachment :doc3
    end
  end

  def self.down
    remove_attachment :categories, :doc3
  end
end
