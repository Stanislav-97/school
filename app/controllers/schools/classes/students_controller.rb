class StudentsController < ApplicationController
  def index
    render json: { data: StudentBlueprint.render_as_hash(students) }
  end

  private

  def school
    @school ||= School.find(params[:school_id])
  end

  def school_class
    @school_class ||= school.school_classes.find(params[:class_id])
  end

  def students
    @students ||= school_class.students
  end
end
