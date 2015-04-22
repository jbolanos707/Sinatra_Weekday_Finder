class String
  define_method(:weekday_finder) do
    date_array = self.split("-")
    year = date_array.at(0)
    month = date_array.at(1)
    day = date_array.at(2)
    current_date = Time.new(year, month, day)

      if current_date.monday?()
        "Monday"
      elsif current_date.tuesday?()
        "Tuesday"
      elsif current_date.wednesday?()
        "Wednesday"
      elsif current_date.thursday?()
        "Thursday"
      elsif current_date.friday?()
        "Friday"
      elsif current_date.saturday?()
        "Saturday"
      else
          "Sunday"
      end
  end
end
