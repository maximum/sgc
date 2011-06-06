class Candidatura < ActiveRecord::Base
  has_one :candidato
  has_one :vaga
  has_one :empresa
  has_one :cargo
  
  validates_presence_of :candidato, :vaga, :empresa, :cargo, :data
end