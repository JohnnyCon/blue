class OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def github
    auth = request.env['omniauth.auth']
    user = User.find_by(provider: auth['provider'], uid: auth['uid']) || User.create_with_omniauth(auth)

    if user.persisted?
      flash[:success] = "successfully logged in"
      sign_in_and_redirect user, notice: "signed in"
    else
      redirect_to :root, notice: "failed to persist"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Signed out!'
  end

end
