class AddAttachmentPictureToAssets < ActiveRecord::Migration
  def self.up
    change_table :assets do |t|
      t.attachment :picture
    end
  end

  def self.down
    drop_attached_file :assets, :picture
  end
end
