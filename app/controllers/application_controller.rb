class ApplicationController < ActionController::Base
#  include Authentication
  include AuthenticatedSystem
  protect_from_forgery
  
#  before_filter { |c| Authorization.current_user = c.current_user }  
   
  #filter_parameter_logging :password, :password_confirmation
      helper_method :current_user_session, :current_user

  private
#FIXME: Fix authentication checking, confliting with lib/authenticated_system.rb
     def current_user_session
       return @current_user_session if defined?(@current_user_session)
       @current_user_session = UserSession.find
     end

     def current_user
       return @current_user if defined?(@current_user)
       @current_user = current_user_session && current_user_session.user
     end 
    
     def require_user
       unless current_user
         store_location
         flash[:notice] = "Você deve estar logado para acessar esta página"
         redirect_to new_user_session_url
         return false
       end
     end

     def require_no_user
       if current_user
         store_location
         #flash[:notice] = "Você deve estar deslogado para acessar esta página"
         redirect_to account_url
         return false
       end
     end

     def store_location
       session[:return_to] = request.request_uri
     end

     def redirect_back_or_default(default)
       redirect_to(session[:return_to] || default)
       session[:return_to] = nil
     end

     protected

     def permission_denied
       flash[:error] = "Desculpe, mas você não tem permissões para acessar esta página."
       redirect_to root_url
     end
  
end
