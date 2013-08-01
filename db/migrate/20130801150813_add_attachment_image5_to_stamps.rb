class AddAttachmentImage5ToStamps < ActiveRecord::Migration
  def self.up
    change_table :stamps do |t|
      t.attachment :image5
    end
  end

  def self.down
    drop_attached_file :stamps, :image5
  end
end
