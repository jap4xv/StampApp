class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.integer :stamp_id

      t.timestamps
    end
  end
end
