class AlterOptionsFieldsToVaga < ActiveRecord::Migration
  def self.up
    change_table :vagas do |t|
      t.integer :curso
      t.integer :experiencia
      t.integer :formacao
      t.integer :uf
      t.
    end
  end

  def self.down
    change_table :vagas do |t|
      t.string :curso
      t.string :experiencia
      t.string :formacao
      t.string :uf
    end
  end
end
