module ApplicationHelper
  def format_date(date)
    date.strftime("%-m/%e/%y - %H:%M:%S %p")
  end
end
