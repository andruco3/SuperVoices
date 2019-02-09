class ConcoursesController < ApplicationController
  def show
    @concourse = Concourse.find(params[:id])
  end

  def index
    @concourses = Concourse.all
  end

  def create
    @concourse = Concourse.new(concourse_params)
    @concourse.image.attach(params[:concourse][:image])
    if @concourse.save
      flash[:success] = "Bienvenido a EventGo"
      redirect_to listconcourse_path
    else
      render 'new'
    end
  end

  def new
    @concourse = Concourse.new
  end

  def concourse_params
    params.require(:concourse).permit(:name, :url, :initDate, :endDate, :description, :comment, :winner,
                                          :prize)
  end


  def destroy
    Concourse.find(params[:id]).destroy
    # flash[:success] = "Eventos eliminados"
    redirect_to root_url
  end
end
