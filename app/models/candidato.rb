class Candidato < ActiveRecord::Base
  has_one :user, :as => :userble, :dependent => :destroy
  
  accepts_nested_attributes_for :user
  
  validates_presence_of :nome, :endereco, :cidade, :uf, :curso, :formacao, :experiencia, :pretencao_salarial  
end
