class Cargo < ActiveRecord::Base
  belongs_to :empresa
  
  validates_presence_of :descricao
end