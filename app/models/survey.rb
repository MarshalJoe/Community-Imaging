class Survey < ActiveRecord::Base
  
  SURVEY_OPTIONS=[
                      [1, 'Poor'],
                      [2, 'Fair'],
                      [3, 'Good'],
                      [4, 'Very Good'],
                      [5, 'Excellent'],
                    ]

  validates :scheduling, inclusion: {in: SURVEY_OPTIONS.map(&:first)}
  validates :receptionist_greeting, inclusion: {in: SURVEY_OPTIONS.map(&:first)}
  validates :completing_forms, inclusion: {in: SURVEY_OPTIONS.map(&:first)}
  validates :awaiting_procedure, inclusion: {in: SURVEY_OPTIONS.map(&:first)}
  validates :technologist, inclusion: {in: SURVEY_OPTIONS.map(&:first)}
  validates :explanation, inclusion: {in: SURVEY_OPTIONS.map(&:first)}
  validates :patient_privcacy, inclusion: {in: SURVEY_OPTIONS.map(&:first)}
  validates :cleanliness, inclusion: {in: SURVEY_OPTIONS.map(&:first)}
  validates :overall_experience, inclusion: {in: SURVEY_OPTIONS.map(&:first)}
  validates :hear_about, inclusion: {in: SURVEY_OPTIONS.map(&:first)}


  # return the appropriate survey option text
  def display_field(field)
    val = send(field.to_sym)
    survey_options_hash[val] 
  end

  # 
  def survey_options_hash
    @survey_options_hash ||= SURVEY_OPTIONS.inject({}) { |hash,pair| hash.merge(pair.first => pair.last) }
  end

end




