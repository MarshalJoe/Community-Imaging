class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
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
      t.text :comments
      t.timestamps
    end
  end
end
