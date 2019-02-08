class AdministratorsController < ApplicationController
  def show
    @administrator = Administrator.find(params[:id])
  end

  def index
    @administrators = Administrator.all
  end

  def create
    @administrator = Administrator.new(administrator_params)
    if @administrator.save
      log_in @administrator
      redirect_to listconcourse_path
      flash[:success] = "Bienvenido a EventGo"
    else
      render 'new'
    end
  end

  def new
    @administrator = Administrator.new
  end

  def administrator_params
    params.require(:administrator).permit(:name, :email, :password,
                                 :password_confirmation)
  end
end
