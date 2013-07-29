class AddDetailsToStamp < ActiveRecord::Migration
  def change
    add_column :stamps, :categories, :text
  end
end
