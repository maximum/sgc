class CreateCandidatos < ActiveRecord::Migration
  def self.up
    create_table :candidatos do |t|
      t.string :nome
      t.string :endereco
      t.string :formacao
      t.string :experiencia
      t.decimal :pretencao_salarial

      t.timestamps
    end
  end

  def self.down
    drop_table :candidatos
  end
end
