class UserSessionsController < ApplicationController

  before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user, :only => :destroy
  
  def new
    @user_session = UserSession.new
  end
  
  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      flash[:notice] = "Login efetuado com sucesso!"  
            
      if @user_session.user.userble.class.to_s == 'Candidato'
        redirect_back_or_default candidato_url(@user_session.user.userble)
      else
        redirect_back_or_default empresa_url(@user_session.user.userble)
      end
    else
      render :action => :new
    end
  end
  
  def destroy
    current_user_session.destroy
    flash[:notice] = "Logout efetuado com sucesso!"
    redirect_to home_index_path
  end

end
