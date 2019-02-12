class StudentsController < ApplicationController
  before_action :set_student, only: [:show,:activate]
  
  def index
    @students = Student.all
  end

  def show
  end
  
  def activate
    If @student.active == true
      @studnet.active = false
    else
      @student.active = true
    end
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end