class AddUfAndCidadeToEmpresa < ActiveRecord::Migration
  def self.up
    add_column :empresas, :uf, :integer
    add_column :empresas, :cidade, :string
  end

  def self.down
    remove_column :empresas, :string
    remove_column :empresas, :uf
  end
end
