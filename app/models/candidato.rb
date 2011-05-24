class Candidato < ActiveRecord::Base
  has_one :user, :as => :userble, :dependent => :destroy
  
  # MAKE sure allow_destroy is destroying users when asked to destroy candidatos.
  accepts_nested_attributes_for :user, :allow_destroy => true  
  
  validates_presence_of :nome, :endereco, :cidade, :uf, :curso, :formacao, :experiencia, :pretencao_salarial  
end
