require_relative 'helper'
require_relative '../lib/month'

class TestMonth < Minitest::Test
  def test_initializing_a_month_saves_values
    m = Month.new(05, 2015)
    assert_equal 05, m.month
    assert_equal 2015, m.year
  end

  def test_to_s_on_jan_2012
    m = Month.new(01, 2012)
    expected = <<EOS
    January 2012
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31
EOS
    assert_equal expected, m.to_s
  end

  def test_to_s_on_jan_2017
    m = Month.new(01, 2017)
    expected = <<EOS
    January 2017
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31
EOS
    assert_equal expected, m.to_s
  end

  def test_check_non_leap_year
    m = Month.new(02, 2015)
    expected = 28
    assert_equal expected, m.to_s
  end

  def test_leap_year
    m = Month.new(02, 2000)
    expected = 29
    assert_equal expected, m.to_s
  end
end

  def test_march_days
    m = Month.new(03, 2000)
    expected = 31
    assert_equal expected, m.to_s
  end

  def test_name_of_month
   m = Month.new(07, 2013)
   expected = 'July'
   assert_equal expected, m.to_s
  end



