class Cargo < ActiveRecord::Base
  belongs_to :empresa
  
  validates_presence_of :descricao
  validates_uniqueness_of :descricao, :scope => :empresa_id
end