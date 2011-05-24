class Empresa < ActiveRecord::Base
  has_many :cargos#, :class_name => "cargo", :foreign_key => "cargo_id"
  has_many :vagas
  has_one :user, :as => :userble, :dependent => :destroy

  accepts_nested_attributes_for :user
  
  validates_presence_of :nome, :cnpj, :endereco, :uf, :cidade
end
