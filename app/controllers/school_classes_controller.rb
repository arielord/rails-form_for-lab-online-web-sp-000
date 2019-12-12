class SchoolClassesController < ApplicationController
  def index
    @schoolclasses = SchoolClasse.all
  end
  
  def show
    @schoolclass = SchoolClass.find(params[:id])
  end
  
  def new
    
  end
  
  def create
    @studentclass = StudentClass.create(params.require)
  end
  
  def edit
  end
  
  def update
  end
  
  # private
  
  # def post_params(*args)
  #   params.require(:).permit(*args)
  # end
end