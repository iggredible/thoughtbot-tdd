class ApplicationController < ActionController::Base
  def authenticate
    unless signed_in?
      redirect_to new_session_path
    end
  end

  def signed_in?
    # current_email.present?
    current_user.signed_in?
  end

  # def current_email
  #   session[:current_email]
  # end

  def sign_in_as(email)
    session[:current_email] = email
  end

  def current_user
    User.new(session[:current_email]) 
  end
end
