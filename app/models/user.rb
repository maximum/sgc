class User < ActiveRecord::Base
  belongs_to :role
  acts_as_authentic

  def role_symbols
    roles = Role.all
    roles.map do |role|
      role.name.underscore.to_sym
    end
  end
end
