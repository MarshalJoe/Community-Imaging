class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :recommend
      t.integer :scheduling
      t.integer :receptionist_greeting
      t.integer :completing_forms
      t.integer :awaiting_procedure
      t.integer :technologist
      t.integer :explanation
      t.integer :patient_privcacy
      t.integer :cleanliness
      t.integer :overall_experience
      t.text :hear_about
    end
  end
end
