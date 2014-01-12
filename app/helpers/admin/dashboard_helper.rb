module Admin::DashboardHelper
  
  def survey_count(type, val)
    "#{type.titleize}: #{val} - #{Survey.where("#{type} = ?", val).count}"
  end
end
