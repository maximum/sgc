class RemoveAditionalComlumn < ActiveRecord::Migration
  def self.up
    remove_column :vagas, :vaga_id
  end

  def self.down
  end
end
