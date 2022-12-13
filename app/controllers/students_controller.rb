class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students, status: :ok
  end

  def grades
    students = Student.order(grade: :desc)
    render json: students, status: :ok
  end

  def highest_grade
    student = Student.order(grade: :desc).first
    render json: student, status: :ok
  end

  def show
    student = Student.find(params[:id])
    render json: student, status: :ok
  end

end
