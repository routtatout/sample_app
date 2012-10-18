class AbingoDashboardController < ApplicationController
  #Declare any before_filters or similar which you need to use your authentication
  #for this controller.
  before_filter :convert_abingo_view

  include Abingo::Controller::Dashboard

  private

  def convert_abingo_view
    bingo!('dashboard_text')
  end
end