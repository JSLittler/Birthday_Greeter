require 'date'

def days_to_birthday(year = @array[0], month = @array[1], day = @array[2])
  today = DateTime.now
  birthday = Date.new(year.to_i, month.to_i, day.to_i)
  days_until = (birthday - today).to_f.ceil
  @days = days_until.to_i
  @days
end

def split_date(bday)
  @bday = bday
  @array = @bday.split("-")
  days_to_birthday
  return @days
end

# split_date('2018-10-21')