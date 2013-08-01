class AddAttachmentImage3ToStamps < ActiveRecord::Migration
  def self.up
    change_table :stamps do |t|
      t.attachment :image3
    end
  end

  def self.down
    drop_attached_file :stamps, :image3
  end
end
