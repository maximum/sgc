class Vaga < ActiveRecord::Base
  belongs_to :empresa
#  belongs_to :empresa, :class_name => "Empresa", :foreign_key => "empresa_id"  
  belongs_to :cargo, :class_name => "Cargo", :foreign_key => "cargo_id"
  
  validates_presence_of :descricao, :salario, :experiencia, :formacao, :cidade, :uf, :data_limite
end
