class SessionsController < ApplicationController
  def new
  end

  def create
    administrator = Administrator.find_by(email: params[:session][:email].downcase)
    if administrator && administrator.authenticate(params[:session][:password])
      log_in administrator
      redirect_to listEvent_url
    else
      flash.now[:danger] = 'No coincide usuario y contraseña'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
