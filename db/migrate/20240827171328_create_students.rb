# frozen_string_literal: true

class CreateStudents < ActiveRecord::Migration[7.1]
  def change
    create_table :students do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :surname, null: false
      t.references :school, null: false, index: true
      t.references :school_class, null: false, index: true

      t.timestamps
    end
  end
end
