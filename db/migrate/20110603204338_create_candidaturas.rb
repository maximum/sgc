class CreateCandidaturas < ActiveRecord::Migration
  def self.up
    create_table :candidaturas do |t|
      t.datetime :data
      t.integer :candidato_id
      t.integer :vaga_id
      t.integer :empresa_id
      t.integer :cargo_id
      t.boolean :accepted, :default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :candidaturas
  end
end
