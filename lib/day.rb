class Day

  def initialize(month, year)
    @month = month.to_i
    @year = year.to_i
  end

  def weekday(month, year)


  ##########             ZELLER'S            ##########

  #Zeller's congruence is an algorithm devised by Christian Zeller
  #to calculate the day of the week for any Julian or Gregorian calendar
  #date. It can be considered to be based on the conversion between Julian day
  #and the calendar date. This excerpt, and more information about Zeller's
  #congruence can be found at http://en.wikipedia.org/wiki/Zeller%27s_congruence.


    if month == 01 or month == 1
      @month = 13
      @year -= 1
    end

    if month == 02 or month == 2
      @month = 14
      @year -= 1
    end

    m = @month
    y = @year
    day_of_month = 1
    day_of_week = (day_of_month + ((26*(m+1))/10) + y + (y/4).floor + 6 * (y/100).floor + (y/400).floor) % 7
  end
end