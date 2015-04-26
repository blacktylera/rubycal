class Day

  def initialize(month, day, year)
    @day = day.to_i
    @month = month.to_i
    @year = year.to_i
  end

  def weekday(month, day, year)


  ##########             ZELLER'S            ##########

  #Zeller's congruence is an algorithm devised by Christian Zeller
  #to calculate the day of the week for any Julian or Gregorian calendar
  #date. It can be considered to be based on the conversion between Julian day
  #and the calendar date. This excerpt, and more information about Zeller's
  #congruence can be found at http://en.wikipedia.org/wiki/Zeller%27s_congruence.


    if @month == 01 or @month == 1
      @month = 13
      @year -= 1
    end

    if @month == 02 or @month == 2
      @month = 14
      @year -= 1
    end

    q = @day
    m = @month
    k = @year % 100
    j = @year/100

    #h = weekday
    h = (q + ((13*(m+1))/5) + k + (k/4) +(j/4) + (5*j)) % 7
  end
end