class Empresa < ActiveRecord::Base
  validates_presence_of :nome, :cnpj, :endereco
end
