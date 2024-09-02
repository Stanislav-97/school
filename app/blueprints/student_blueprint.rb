# frozen_string_literal: true

class StudentBlueprint < Blueprinter::Base
  identifier :id

  fields :first_name, :last_name, :surname
end
