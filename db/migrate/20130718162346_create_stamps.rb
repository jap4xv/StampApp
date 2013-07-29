class CreateStamps < ActiveRecord::Migration
  def change
    create_table :stamps do |t|
      t.string :Title
      t.text :Description
      t.decimal :Price

      t.timestamps
    end
  end
end
