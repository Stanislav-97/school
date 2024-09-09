class StudentsController < ApplicationController
  def create
    student = Student.create!(**student_params.to_h, school_class_id: params[:class_id])
    response.headers["X-Auth-Token"] = Digest::SHA256.digest("#{student.id} + #{secret_salt}")

    head :ok
  rescue ActiveRecord::RecordInvalid => e
    render json: { error: e }, status: 405
  end

  def destroy
    student.destroy
    head :ok
  end

  private

  def student_params
    params.permit(:first_name, :last_name, :surname, :school_id)
  end

  def student
    @student ||= Student.find(params[:id])
  end

  def secret_salt
    ENV["SECRET_SALT"]
  end
end
