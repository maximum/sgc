class Candidato < ActiveRecord::Base

  validates_presence_of :nome, :endereco, :cidade, :uf, :curso, :formacao, :experiencia, :pretencao_salarial  
end
