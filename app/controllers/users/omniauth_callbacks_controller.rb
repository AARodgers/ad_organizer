class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    pp request.env["omniauth.auth"]
    puts 'Facebook Login successful!'
    redirect_to root_path
  end

  def failure
    redirect_to root_path
  end
end
