class SchoolClassesController < ApplicationController
  def index
    @schoolclasses = SchoolClass.all
  end
  
  def show
    @schoolclass = SchoolClass.find(params[:id])
  end
  
  def new
    @schoolclass = SchoolClass.new()
  end
  
  def create
    @schoolclass = SchoolClass.create(post_params(:title, :room_number))
    redirect_to school_class_path(@schoolclass)
  end
  
  def edit
    @schoolclass = SchoolClass.find(params[:id])
  end
  
  def update
    @schoolclass = SchoolClass.find(params[:id])
    @schoolclass.update(post_params(:title, :room_number))
    redirect_to school_class_path(@schoolclass)
  end
  
  private
  
  def post_params(*args)
    params.require(:school_class).permit(*args)
  end
end