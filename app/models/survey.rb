class Survey < ActiveRecord::Base
  
  SURVEY_OPTIONS=[
                      [1, 'Poor'],
                      [2, 'Fair'],
                      [3, 'Good'],
                      [4, 'Very Good'],
                      [5, 'Excellent'],
                    ]


  validates :scheduling, inclusion: {in: SURVEY_OPTIONS.map(&:first)}


  # calling this method will return the appropriate survey option text
  def display_field(field)
    val = send(field.to_sym)
    survey_options_hash[val] 
  end


  def survey_options_hash
    @survey_options_hash ||= SURVEY_OPTIONS.inject({}) { |hash,pair| hash.merge(pair.first => pair.last) }
  end



end
