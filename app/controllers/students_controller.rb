# frozen_string_literal: true

class StudentsController < ApplicationController
  def create
    student = Student.create!(student_params)
    response.headers["X-Auth-Token"] = Digest::SHA256.digest("#{student.id} + #{secret_salt}")

    head :ok
  end

  def destroy
    student.destroy
    head :ok
  end

  private

  def student_params
    params.permit(:first_name, :last_name, :surname, :school_id, :class_id)
  end

  def student
    @student ||= Student.find(params[:id])
  end

  def secret_salt
    ENV["SECRET_SALT"]
  end
end
