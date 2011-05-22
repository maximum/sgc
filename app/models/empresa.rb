class Empresa < ActiveRecord::Base
  has_many :cargos, :class_name => "cargo", :foreign_key => "cargo_id"
  
  validates_presence_of :nome, :cnpj, :endereco
end
