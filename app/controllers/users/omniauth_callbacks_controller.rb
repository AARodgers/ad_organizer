class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    data = request.env["omniauth.auth"]
    email = data["info"]["email"]
    user = User.find_by email: email
    unless user
      user = User.create!(
        email: email,
        password: SecureRandom.hex(64),
        provider: :facebook,
        uid: data["uid"]
      )
    end
    sign_in_and_redirect user
  end

  def failure
    redirect_to root_path
  end
end
