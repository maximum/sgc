class UsersController < ApplicationController

  before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user, :only => [:show, :edit, :update]
  
  def new    
    @user = User.new
    @roles = Role.all

#@user.userble.build

#    if params[:type] == 'candidato'
#      @user.userble = Candidato.new
#    end
  end
  
  def create
#    @userble = find_userble
#    @user.build(params[:candidato])
#    @user = @userble.users.build(params[:user])
#    temp = params[:user][:candidato]
#    params[:user].delete(:candidato)
    @user = User.new(params[:user])
#    if params[:type] == 'candidato'
#      @user.userble = Candidato.new(temp)
#    end
    if @user.save
      flash[:notice] = "Usuário registrado com sucesso!"
      redirect_back_or_default account_url
    else
      render :action => :new
    end
  end
  
  def show
    @user = @current_user
  end

  def edit
    @user = @current_user
  end
  
  def update
    @user = @current_user # makes our views "cleaner" and more consistent
    if @user.update_attributes(params[:user])
      flash[:notice] = "Usuário atualizado com sucesso!"
      redirect_to account_url
    else
      render :action => :edit
    end
  end

  private

  def find_userble
    params.each do |name, value|
      if name =~ /(.+)_id$/
        return $1.classify.constantize.find(value)
      end
    end
    nil
  end

end