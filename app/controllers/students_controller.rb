class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = set_student
  end

  def activate
    @student = set_student
    if @student.active
      @student.active = false
    else
      @student.activate = true
    end
    @student.save
    redirect_to student_path(@student)
  end


  private

    def set_student
      @student = Student.find(params[:id])
    end
end
