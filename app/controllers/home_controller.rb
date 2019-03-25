class HomeController < ApplicationController
  def index
    @s=Student.all
  end

  def show
  end

  def new
    @s=Student.new
  end
  def create
    @s=Student.new(student_params)
    if @s.save
      redirect_to(action:'index')
    else
      render('new')
    end
  end

  def edit
  end
  def import
    Student.find(params[:file])
    redirect_to(action:'index')
  end

  def delete
  end
  private
  def student_params
    params.require(:Student).permit(:rollno,:name,:grade,:branch)
  end
end
