class AddAttachmentDoc1ToCategories < ActiveRecord::Migration::Current
  def self.up
    change_table :categories do |t|
      t.attachment :doc1
    end
  end

  def self.down
    remove_attachment :categories, :doc1
  end
end
