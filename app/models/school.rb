# frozen_string_literal: true

class School < ApplicationRecord
  has_many :school_classes
  has_many :students

  validates :number, presence: true
end
