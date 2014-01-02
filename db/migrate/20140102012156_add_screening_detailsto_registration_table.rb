class AddScreeningDetailstoRegistrationTable < ActiveRecord::Migration
  def change
    add_column :registrations, :gunshot_bbs_shrapnel_wounds, :string 
    add_column :registrations, :vascular_surgery, :string 
    add_column :registrations, :pacemaker_heart_surgery, :string 
    add_column :registrations, :brain_surgery_aneurysm_clips, :string 
    add_column :registrations, :diabetic, :string
    add_column :registrations, :glucophage_metformin, :string 
    add_column :registrations, :cancer_tumors, :string 
    add_column :registrations, :tattoos_body_piercings, :string
    add_column :registrations, :kidney_liver_problems, :string 
    add_column :registrations, :contrast_allergy, :string 
    add_column :registrations, :ear_implants_hearing_aids, :string 
    add_column :registrations, :blood_bleeding_disorder, :string 
    add_column :registrations, :IUD, :string 
  end
end




                       
                       
                        
                        
                        
                        
                       
                        
                        
                        
                  
                       
        