class AddMoreColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :address, :string 
    add_column :users, :city, :string 
    add_column :users, :state, :string 
    add_column :users, :zip, :integer 
    add_column :users, :home_phone, :string 
    add_column :users, :cell_phone, :string 
    add_column :users, :height, :string 
    add_column :users, :weight, :string 
    add_column :users, :referring_physician, :string
    add_column :users, :procedure_type, :string
    add_column :users, :insurance_provider, :string 
    add_column :users, :group_number, :string 
    add_column :users, :id_number, :string 
    add_column :users, :insurance_phone, :string 
  end
end
