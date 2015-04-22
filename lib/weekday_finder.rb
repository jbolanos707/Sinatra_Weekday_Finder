class Time
  define_method(:weekday_finder) do
    date = self
    if date.sunday?
      "Sunday"
    elsif date.monday?
      "Monday"
    elsif date.tuesday?
      "Tuesday"
    elsif date.wednesday?
      "Wednesday"
    elsif date.thursday?
      "Thursday"
    elsif date.friday?
      "Friday"
    else date.saturday?
      "Saturday"
    end
  end
end
