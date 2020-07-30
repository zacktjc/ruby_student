class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit]

  def index
    @students = Student.all
  end

  def show
  end

  def destroy
    @student = Student.find(params[:id]).destroy
    redirect_to students_path
  end

  def update
    @student = Student.find(params[:id])
    if @student.update(students_params)
      redirect_to students_path
    else
      render :edit
    end
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(students_params)
    if @student.save
      redirect_to students_path
    else
      render :new
    end
  end

  def edit
  end

  private
  def set_student 
    @student = Student.find(params[:id])
  end

  def students_params
    params.require(:student).permit(:firstname, :lastname, :gender, :age, :email, :phone_number)
  end
end
