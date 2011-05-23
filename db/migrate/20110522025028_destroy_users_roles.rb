class DestroyUsersRoles < ActiveRecord::Migration
  def self.up
    drop_table :users_models    
  end

  def self.down
    create_table :users_models do |t|
      t.integer :user_id
      t.integer :model_id
    end
  end
end
