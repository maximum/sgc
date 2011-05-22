class Cargo < ActiveRecord::Base
  belongs_to :empresa, :class_name => "Empresa", :foreign_key => "empresa_id"
  
  validates_presence_of :descricao
end