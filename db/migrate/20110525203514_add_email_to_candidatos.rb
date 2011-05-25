class AddEmailToCandidatos < ActiveRecord::Migration
  def self.up
    add_column :candidatos, :email, :string
  end

  def self.down
    remove_column :candidatos, :email
  end
end
