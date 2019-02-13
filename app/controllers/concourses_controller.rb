class ConcoursesController < ApplicationController
  def show
    @concourse = Concourse.find_by_slug(params[:slug])
  end

   # def show
   #   @concourse = Concourse.find(params[:id])
   # end


  def edit
    @concourse = Concourse.find_by_slug(params[:slug])
  end

  def index
    @concourses = Concourse.all
  end

  def create
    @concourse = Concourse.new(concourse_params)
    @concourse.image.attach(params[:concourse][:image])
    if @concourse.save
      flash[:success] = "Bienvenido a SuperVoices"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def new
    @concourse = Concourse.new
  end

  def update
    @concourse = Concourse.find_by_slug(params[:slug])
    if @concourse.update_attributes(concourse_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end


  def destroy
    Concourse.find_by_slug(params[:slug]).destroy
    # flash[:success] = "Eventos eliminados"
    redirect_to root_url
  end

  def concourse_params
    params.require(:concourse).permit(:name, :url, :initDate, :endDate, :description, :comment, :winner,
                                          :prize)
  end


end
