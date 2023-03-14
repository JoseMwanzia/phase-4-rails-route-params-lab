class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def show_id
    show_id = Student.find(1)
    # show_id = Student.find(2)
    show_id = Student.find_by(params[:id])
    render json: show_id
  end
end
