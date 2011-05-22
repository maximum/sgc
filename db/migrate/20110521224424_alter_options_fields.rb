class AlterOptionsFields < ActiveRecord::Migration
  def self.up
    change_table :candidatos do |t|
      t.integer :formacao
      t.integer :experiencia
      t.integer :uf      
      t.integer :curso
      t.
    end
  end

  def self.down
    change_table :candidatos do |t|
    end
  end
end
