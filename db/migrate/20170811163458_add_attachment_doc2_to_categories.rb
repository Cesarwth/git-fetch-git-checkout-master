class AddAttachmentDoc2ToCategories < ActiveRecord::Migration::Current
  def self.up
    change_table :categories do |t|
      t.attachment :doc2
    end
  end

  def self.down
    remove_attachment :categories, :doc2
  end
end
