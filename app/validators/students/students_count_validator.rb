# frozen_string_literal: true

module Students
  class StudentsCountValidator < ActiveModel::Validator
    def validate(record)
      return unless full?(record.school_class)

      record.errors.add(:school_class_id, "Класс уже набран")
    end

    private

    def full?(school_class)
      school_class.students.count == school_class.students_count
    end
  end
end
