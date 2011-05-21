class Vaga < ActiveRecord::Base
  validates_presence_of :descricao, :salario, :experiencia, :formacao, :cidade, :uf, :status, :data_limite
end
