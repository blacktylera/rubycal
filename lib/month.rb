class Month
  attr_reader :month, :year

def initialize(month, year)
   @month = month
   @year = year
end


def name
	month_name_hash = {1 => "January", 2 => "Feburary", 3 => "March", 4 => "April", 5 => "May", 6 => "June",
	7 => "July", 8 => "August", 9 => "Septemnber", 10 => "October", 11 => "November", 12 => "December"}
	return month_name_hash[@month]
end

def day_count
	day_count_hash = {1 => 31, 2 => 28, 3 => 31, 4 => 30, 5 => 31, 6 => 30, 7 => 31, 8 => 31, 9 => 30, 10 => 31, 11 => 30, 12 => 31}
  return day_count_hash[@month]
end

def to_s
  cal_string = ""
  number_spacer = " "
  width = 20
	month_name_year_head = "#{name} #{@year}".center(width).rstrip
	weekday_name_head = "Su Mo Tu We Th Fr Sa".center(width).rstrip

	cal_string << month_name_year_head
	cal_string << "\n"
	cal_string << weekday_name_head
	cal_string << "\n"

	(1..day_count.to_i).each do |i|
		if i < 10
			cal_string << number_spacer
			cal_string << "#{i.to_s}"
			if i % 7 == 0
					cal_string << "\n"
			else
				cal_string << number_spacer
			end
		else
			cal_string << "#{i.to_s}"
				if i % 7 == 0
					cal_string << "\n"
				elsif i == day_count
					cal_string << "\n"
				else
					cal_string << number_spacer
				end
		end
	end
	cal_string
end
end





