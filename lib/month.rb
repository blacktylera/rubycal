require_relative '../lib/day'


class Month
  attr_reader :month, :year

def initialize(month, year)
   @month = month
   @year = year
end

def name
	month_name_hash = {1 => "January", 2 => "February", 3 => "March", 4 => "April", 5 => "May", 6 => "June",
	7 => "July", 8 => "August", 9 => "September", 10 => "October", 11 => "November", 12 => "December"}
	return month_name_hash[@month]
end

def day_count
	if @year % 400 == 0
		day_count_hash = {1 => 31, 2 => 29, 3 => 31, 4 => 30, 5 => 31, 6 => 30, 7 => 31, 8 => 31, 9 => 30, 10 => 31, 11 => 30, 12 => 31}
  elsif @year % 4 == 0 && @year % 100 != 0
  	day_count_hash = {1 => 31, 2 => 29, 3 => 31, 4 => 30, 5 => 31, 6 => 30, 7 => 31, 8 => 31, 9 => 30, 10 => 31, 11 => 30, 12 => 31}
  else
  	day_count_hash = {1 => 31, 2 => 28, 3 => 31, 4 => 30, 5 => 31, 6 => 30, 7 => 31, 8 => 31, 9 => 30, 10 => 31, 11 => 30, 12 => 31}
	end
  return day_count_hash[@month]
end

def to_s
	cal_string = ""
  number_spacer = " "
  width = 20
	month_name_year_head = "#{name} #{@year}".center(width).rstrip!
	weekday_name_head = "Su Mo Tu We Th Fr Sa".center(width).rstrip
	first_day = Day.new(month, year).weekday(month, year)


	cal_string << month_name_year_head
	cal_string << "\n"
	cal_string << weekday_name_head
	cal_string << "\n"

	if first_day == 1
		cal_string
	elsif first_day == 2
		cal_string << number_spacer * 3
	elsif first_day == 3
		cal_string << number_spacer * 6
	elsif first_day == 4
		cal_string << number_spacer * 9
	elsif first_day == 5
		cal_string << number_spacer * 12
	elsif first_day == 6
		cal_string << number_spacer * 15
	elsif first_day == 0
		cal_string << number_spacer * 18
	end

	(1..day_count.to_i).each do |i|
			cal_string << "#{i.to_s}".rjust(2) << number_spacer
			if cal_string.lines[-1].length > 18
				cal_string.rstrip!
				cal_string << "\n"
			end
		end
	cal_string.rstrip! << "\n"
end
end



