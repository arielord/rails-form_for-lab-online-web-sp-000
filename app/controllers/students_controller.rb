class StudentsController < ApplicationController
  def index
    @students = Student.all
  end
  
  def show
    @student = Student.find(params[:id])
  end
  
  def new
    @student = Student.new()
  end
  
  def create
    @student = Student.create(post_params(:first_name, :last_name))
    redirect_to school_class_path(@student)
  end
  
  def edit
    @student = Student.find(params[:id])
  end
  
  def update
    @student = Student.find(params[:id])
    @student.update(post_params(:first_name, :last_name))
  end
  
  private
  
  def post_params(*args)
    params.require(:student).permit(*args)
  end
end