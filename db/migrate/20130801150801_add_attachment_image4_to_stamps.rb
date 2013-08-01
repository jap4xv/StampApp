class AddAttachmentImage4ToStamps < ActiveRecord::Migration
  def self.up
    change_table :stamps do |t|
      t.attachment :image4
    end
  end

  def self.down
    drop_attached_file :stamps, :image4
  end
end
