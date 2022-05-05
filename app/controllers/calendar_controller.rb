class CalendarController < ApplicationController

  def index
    @meetings = Meeting.all
  end
  def date_range
    (start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week).to_a
  end
end
