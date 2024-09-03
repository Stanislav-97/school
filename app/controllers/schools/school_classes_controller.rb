module Schools
  class SchoolClassesController < ApplicationController
    def index
      render json: { data: SchoolClassBlueprint.render_as_hash(classes) }
    end

    private

    def school
      @school ||= School.find(params[:school_id])
    end

    def classes
      @classes ||= school.classes
    end
  end
end
