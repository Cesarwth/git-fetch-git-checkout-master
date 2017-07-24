class AddAttachmentRotatingFileToRotatingImages < ActiveRecord::Migration::Current
  def self.up
    change_table :rotating_images do |t|
      t.attachment :rotating_file
    end
  end

  def self.down
    remove_attachment :rotating_images, :rotating_file
  end
end
