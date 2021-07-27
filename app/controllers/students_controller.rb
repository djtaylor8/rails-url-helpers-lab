class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    set_student
  end

  def activate
    set_student
    if @student == true 
      @student.active = false
      @student.save
    else 
      @student.active = true 
      @student.save 
    end
    redirect_to @student 
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end