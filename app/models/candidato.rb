class Candidato < ActiveRecord::Base
  has_one :user, :as => :userble, :dependent => :destroy
  
  accepts_nested_attributes_for :user
  
  validates_presence_of :nome, :email, :endereco, :cidade, :uf, :curso, :formacao, :experiencia, :pretencao_salarial
  validates_format_of :email, :with => /^([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})$/i
  validates_numericality_of :pretencao_salarial, :on => :create, :message => "deve ser um valor numérico inteiro"
end