class UsersModels < ActiveRecord::Migration
  def self.up
    create_table :users_models do |t|
      t.integer :user_id
      t.integer :model_id
    end
  end

  def self.down
    drop_table :users_models
  end
end
