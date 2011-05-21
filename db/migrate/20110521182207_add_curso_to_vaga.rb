class AddCursoToVaga < ActiveRecord::Migration
  def self.up
    add_column :vagas, :curso, :string
  end

  def self.down
    remove_column :vagas, :curso
  end
end
