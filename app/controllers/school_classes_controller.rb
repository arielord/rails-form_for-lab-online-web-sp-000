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
  end
  
  def edit
  end
  
  def update
  end
end