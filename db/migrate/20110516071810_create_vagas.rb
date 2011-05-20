class CreateVagas < ActiveRecord::Migration
  def self.up
    create_table :vagas do |t|
      t.string :descriacao
      t.decimal :salario
      t.string :experiencia
      t.string :formacao

      t.timestamps
    end
  end

  def self.down
    drop_table :vagas
  end
end
