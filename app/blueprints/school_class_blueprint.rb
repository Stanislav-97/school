# frozen_string_literal: true

class SchoolClassBlueprint < Blueprinter::Base
  identifier :id

  fields :number, :letter, :students_count

  association :students, blueprint: StudentBlueprint, default: []
end
