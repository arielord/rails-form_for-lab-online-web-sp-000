class SchoolClassesController < ApplicationController
  def index
    @schoolclasses = SchoolClasse.all
  end
  
  def show
    @schoolclass = SchoolClass.find(params[:id])
  end
  
  def new
    @schoolclass = SchoolClass.new()
  end
  
  def create
    @studentclass = StudentClass.create(post_params(:title, :room_number))
  end
  
  def edit
  end
  
  def update
  end
  
  private
  
  def post_params(*args)
    params.require(:school_class).permit(*args)
  end
end