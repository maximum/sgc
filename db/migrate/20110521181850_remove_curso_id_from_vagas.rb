class RemoveCursoIdFromVagas < ActiveRecord::Migration
  def self.up
    remove_column :vagas, :curso_id
  end

  def self.down
  end
end
