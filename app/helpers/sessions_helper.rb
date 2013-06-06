module SessionsHelper
  
  def sign_in(user)
    cookies.permanent[:remember_token] = user.remember_token
    self.current_user = user
  end
  
  def current_user=(user)
    @current_user = user
  end
  
  def current_user
    @current_user ||= User.find_by_remember_token(cookies[:remember_token])
  end
    
  def signed_in?
    !current_user.nil?
  end
  
  def sign_out
    self.current_user = nil
    cookies.delete(:remember_token)
  end
  
  # for production level hacking protection-- also set config.force_ssl = true in config/environments/production.rb
  # cookies.signed[:secure_user_id] = {secure: true, value: "secure#{user.id}"}
  # cookies.delete(:secure_user_id)
  
  #def current_user
  #  if !request.ssl? || cookies.signed[:secure_user_id] == "secure#{session[:user_id]}"
  #    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  #  end
  #end  
end
