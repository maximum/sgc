class AddVagaIdToVaga < ActiveRecord::Migration
  def self.up
    add_column :vagas, :vaga_id, :integer
    add_column :vagas, :empresa_id, :integer
    add_column :vagas, :cargo_id, :integer
    add_column :vagas, :curso_id, :integer
    add_column :vagas, :cidade, :string
    add_column :vagas, :uf, :string
    add_column :vagas, :status, :boolean
    add_column :vagas, :data_limite, :datetime
  end

  def self.down
    remove_column :vagas, :vaga_id
    remove_column :vagas, :empresa_id
    remove_column :vagas, :cargo_id
    remove_column :vagas, :curso_id
    remove_column :vagas, :cidade
    remove_column :vagas, :uf
    remove_column :vagas, :status
    remove_column :vagas, :data_limite
  end
end
