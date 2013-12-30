class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :home_phone
      t.integer :cell_phone
      t.string :email
      t.string :time_to_call
      t.string :status
      t.string :exam
      t.string :ordering_physician
      t.string :weight
      t.string :height
      t.string :referring_physician
      t.string :procedure_type
      t.string :insurance_provider
      t.integer :group_number
      t.integer :id_number
      t.integer :insurance_phone

      t.timestamps
    end
  end
end
