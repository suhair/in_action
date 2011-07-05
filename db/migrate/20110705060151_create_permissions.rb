class CreatePermissions < ActiveRecord::Migration
  def self.up
    create_table :permissions do |t|
      t.integer :user_id
      t.integer :thing_id
      t.string :thing_type
      t.string :action

      t.timestamps
    end
  end

  def self.down
    drop_table :permissions
  end
end
