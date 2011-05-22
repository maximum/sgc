class CreateVagas < ActiveRecord::Migration
  def self.up
    create_table :vagas do |t|
      t.string :descricao
      t.decimal :salario
      t.integer :experiencia
      t.integer :formacao
      t.integer :empresa_id
      t.integer :cargo_id
      t.integer :curso
      t.string :cidade
      t.integer :uf
      t.boolean :status
      t.datetime :data_limite

      t.timestamps
    end
  end

  def self.down
    drop_table :vagas
  end
end
