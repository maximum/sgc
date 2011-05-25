class Vaga < ActiveRecord::Base
  belongs_to :empresa
  belongs_to :cargo
  
  validates_presence_of :descricao, :salario, :experiencia, :formacao, :cidade, :uf, :data_limite, :cargo
end
