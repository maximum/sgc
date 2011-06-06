class User < ActiveRecord::Base
  belongs_to :role
  belongs_to :userble, :polymorphic => true

  attr_readonly :login
  
  acts_as_authentic

  validate_on_update :forbid_changing_name

  def forbid_changing_name
    errors[:login] = "não pode ser alterado!" if self.login_changed?
  end

  def role_symbols
    roles = Role.all
    roles.map do |role|
      role.name.underscore.to_sym
    end
  end  
end
