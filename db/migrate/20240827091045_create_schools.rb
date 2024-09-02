# frozen_string_literal: true

class CreateSchools < ActiveRecord::Migration[7.1]
  def change
    create_table :schools do |t|
      t.integer :number, null: false

      t.timestamps
    end
  end
end
