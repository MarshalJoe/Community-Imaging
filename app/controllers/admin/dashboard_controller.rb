class Admin::DashboardController < ApplicationController

  before_filter :authenticate_admin

  def index
    @leads = Lead.all
    @registrations = Registration.all
    @surveys = Survey.all
    @column_names = Survey.column_names.delete_if { |x| x == "id" || x == "recommend" || x == "hear_about" }
  end

  private

  def authenticate_admin
    if current_user && current_user.role == "admin"
      return true
    else
      flash[:error] = "You do not have permission to access this area"
      redirect_to root_url
    end
  end
end
