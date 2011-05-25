class AddNumVagasToVagas < ActiveRecord::Migration
  def self.up
    add_column :vagas, :num_vagas, :integer
  end

  def self.down
    remove_column :vagas, :num_vagas
  end
end
