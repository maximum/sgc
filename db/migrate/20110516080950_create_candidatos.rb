class CreateCandidatos < ActiveRecord::Migration
  def self.up
    create_table :candidatos do |t|
      t.string :nome
      t.string :endereco
      t.integer :formacao
      t.integer :experiencia
      t.decimal :pretencao_salarial
      t.string :cidade
      t.integer :uf
      t.integer :curso

      t.timestamps
    end
  end

  def self.down
    drop_table :candidatos
  end
end
