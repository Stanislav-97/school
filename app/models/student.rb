# frozen_string_literal: true

class Student < ApplicationRecord
  belongs_to :school
  belongs_to :school_class

  validates :first_name, :last_name, :surname, presence: true

  validates_with Students::StudentsCountValidator
end
