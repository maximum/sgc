class AddPersonalDetailsToCandidato < ActiveRecord::Migration
  def self.up
    add_column :candidatos, :cidade, :string
    add_column :candidatos, :uf, :string
    add_column :candidatos, :curso, :string
  end

  def self.down
    remove_column :candidatos, :cidade
    add_column :candidatos, :uf
    add_column :candidatos, :curso
  end
end
