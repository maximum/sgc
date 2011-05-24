class User < ActiveRecord::Base
  belongs_to :role
  belongs_to :userble, :polymorphic => true
  
#  accepts_nested_attributes_for :userble
  
  acts_as_authentic

  def role_symbols
    roles = Role.all
    roles.map do |role|
      role.name.underscore.to_sym
    end
  end
end
