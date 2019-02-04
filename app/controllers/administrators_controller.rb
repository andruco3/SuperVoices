class AdministratorsController < ApplicationController
  def show
    @administrator = Administrator.find(params[:id])
  end


  def index
    @administrators = Administrator.all
  end

  def create
    @administrator = Administrator.new(Administrator_params)
    if @administrator.save
      log_in @administrator
      flash[:success] = "Bienvenido a EventGo"
    else
      render 'new'
    end
  end

  def new
    @administrator = Administrator.new
  end

  def Administrator_params
    params.require(:Administrator).permit(:name, :email, :password,
                                 :password_confirmation)
  end
end
