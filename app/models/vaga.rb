class Vaga < ActiveRecord::Base
  validates_presence_of :descriacao, :salario, :experiencia, :formacao
end
