class RenameDescricaoColumn < ActiveRecord::Migration
  def self.up
    rename_column :vagas, :descriacao, :descricao
  end

  def self.down
    rename_column :vagas, :descricao, :descriacao
  end
end
