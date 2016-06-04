class SessionsController < ApplicationController
  def new
    @titre = "Bienvenue"
  end

  def create
	user = User.authenticate( params[:session][:username],
                            params[:session][:password])
    if user.nil?
      flash.now[:error] = "Identifiant ou Mot de passe incorrect"
      @titre = "Bienvenue"
      render 'new'
    else
      sign_in user
      redirect_back_or root_path
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end
