class AddAttachmentImage2ToStamps < ActiveRecord::Migration
  def self.up
    change_table :stamps do |t|
      t.attachment :image2
    end
  end

  def self.down
    drop_attached_file :stamps, :image2
  end
end
