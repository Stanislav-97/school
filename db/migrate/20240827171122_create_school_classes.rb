# frozen_string_literal: true

class CreateSchoolClasses < ActiveRecord::Migration[7.1]
  def change
    create_table :school_classes do |t|
      t.references :school, null: false, index: true
      t.integer :number, null: false
      t.string :letter, null: false
      t.integer :students_count, null: false

      t.timestamps
    end
  end
end
