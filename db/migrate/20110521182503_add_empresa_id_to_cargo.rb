class AddEmpresaIdToCargo < ActiveRecord::Migration
  def self.up
    add_column :cargos, :empresa_id, :string
  end

  def self.down
    remove_column :cargos, :empresa_id
  end
end
