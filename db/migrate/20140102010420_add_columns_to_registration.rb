class AddColumnsToRegistration < ActiveRecord::Migration
  def change
    add_column :registrations, :fname, :string 
    add_column :registrations, :lname, :string 
    add_column :registrations, :address, :string 
    add_column :registrations, :city, :string 
    add_column :registrations, :state, :string 
    add_column :registrations, :zip, :integer 
    add_column :registrations, :home_phone, :string 
    add_column :registrations, :cell_phone, :string 
    add_column :registrations, :height, :string 
    add_column :registrations, :weight, :string 
    add_column :registrations, :referring_physician, :string
    add_column :registrations, :procedure_type, :string
    add_column :registrations, :insurance_provider, :string 
    add_column :registrations, :group_number, :string 
    add_column :registrations, :id_number, :string 
    add_column :registrations, :insurance_phone, :string 
  end
end
