class AddNotesToStamp < ActiveRecord::Migration
  def change
    add_column :stamps, :notes, :text
  end
end
