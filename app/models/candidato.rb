class Candidato < ActiveRecord::Base
  validates_presence_of :nome, :endereco, :formacao, :experiencia, :pretencao_salarial
end
