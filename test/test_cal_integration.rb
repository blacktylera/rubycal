require_relative 'helper'

class TestCalIntegration < Minitest::Test

  def test_regular_leap_years
    output = `./cal.rb 02 2016`
    expected = <<EOS
  February 2016
Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6
 7  8  9 10 11 12 13
14 15 16 17 18 19 20
21 22 23 24 25 26 27
28 29
EOS
    assert_equal expected, output
  end

  def test_leap_years_divisible_by_400
    output = `./cal.rb 02 2016`
    expected = <<EOS
  February 2000
Su Mo Tu We Th Fr Sa
       1  2  3  4  5
 6  7  8  9 10 11 12
13 14 15 16 17 18 19
20 21 22 23 24 25 26
27 28 29
EOS
    assert_equal expected, output
  end

  def test_leap_years_not_divisible_by_400
    output = `./cal.rb 02 2016`
    expected = <<EOS
  February 2300
Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6
 7  8  9 10 11 12 13
14 15 16 17 18 19 20
21 22 23 24 25 26 27
28
EOS
    assert_equal expected, output
  end

  def test_unacceptable_month_input_characters
    output = `./cal.rb 012 2012`
    expected = <<EOS
Date not in acceptable format/range.
EOS
	assert_equal expected, output
  end

  def test_unacceptable_month_input
    output = `./cal.rb April 2012`
    expected = <<EOS
Date not in acceptable format/range.
EOS
	assert_equal expected, output
  end

  def test_unacceptable_high_month
    output = `./cal.rb 13 2012`
    expected = <<EOS
Date not in acceptable format/range.
EOS
	assert_equal expected, output
  end

  def test_unacceptable_low_month
    output = `./cal.rb 0 2012`
    expected = <<EOS
Date not in acceptable format/range.
EOS
	assert_equal expected, output
  end


  def test_month_after_3000_fails
    output = `./cal.rb 01 3001`
    expected = <<EOS
Date not in acceptable format/range.
EOS
	assert_equal expected, output
  end

  def test_month_before_1800_fails
    output = `./cal.rb 01 1799`
    expected = <<EOS
Date not in acceptable format/range.
EOS
	assert_equal expected, output
  end


  def test_month_that_starts_on_sunday
    output = `./cal.rb 01 2012`
    expected = <<EOS
    January 2012
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31

EOS
	assert_equal expected, output
  end

  def test_jan_output
    output = `./cal.rb 01 2012`
    expected = <<EOS
    January 2012
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31
EOS
	assert_equal expected, output
  end

  def test_feb_output
    output = `./cal.rb 02 2012`
    expected = <<EOS
   February 2012
Su Mo Tu We Th Fr Sa
          1  2  3  4
 5  6  7  8  9 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29
EOS
	assert_equal expected, output
  end


  def test_mar_output
    output = `./cal.rb 03 2012`
    expected = <<EOS
     March 2012
Su Mo Tu We Th Fr Sa
             1  2  3
 4  5  6  7  8  9 10
11 12 13 14 15 16 17
18 19 20 21 22 23 24
25 26 27 28 29 30 31
EOS
	assert_equal expected, output
  end

  def test_apr_output
    output = `./cal.rb 04 2012`
    expected = <<EOS
     April 2012
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30
EOS
	assert_equal expected, output
  end

 	def test_may_output
    output = `./cal.rb 05 2012`
    expected = <<EOS
     May 2012
Su Mo Tu We Th Fr Sa
       1  2  3  4  5
 6  7  8  9 10 11 12
13 14 15 16 17 18 19
20 21 22 23 24 25 26
27 28 29 30 31
EOS
	assert_equal expected, output
  end

  def test_jun_output
    output = `./cal.rb 06 2012`
    expected = <<EOS
     June 2012
Su Mo Tu We Th Fr Sa
                1  2
 3  4  5  6  7  8  9
10 11 12 13 14 15 16
17 18 19 20 21 22 23
24 25 26 27 28 29 30
EOS
	assert_equal expected, output
  end

  def test_jul_output
    output = `./cal.rb 07 2012`
    expected = <<EOS
     July 2012
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31
EOS
	assert_equal expected, output
  end

  def test_aug_output
    output = `./cal.rb 08 2012`
    expected = <<EOS
    August 2012
Su Mo Tu We Th Fr Sa
          1  2  3  4
 5  6  7  8  9 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29 30 31
EOS
	assert_equal expected, output
  end


  def test_sep_output
    output = `./cal.rb 09 2012`
    expected = <<EOS
   September 2012
Su Mo Tu We Th Fr Sa
                   1
 2  3  4  5  6  7  8
 9 10 11 12 13 14 15
16 17 18 19 20 21 22
23 24 25 26 27 28 29
30
EOS
	assert_equal expected, output
  end

  def test_oct_output
    output = `./cal.rb 10 2012`
    expected = <<EOS
    October 2012
Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6
 7  8  9 10 11 12 13
14 15 16 17 18 19 20
21 22 23 24 25 26 27
28 29 30 31
EOS
	assert_equal expected, output
  end

 	def test_nov_output
    output = `./cal.rb 11 2012`
    expected = <<EOS
   November 2012
Su Mo Tu We Th Fr Sa
             1  2  3
 4  5  6  7  8  9 10
11 12 13 14 15 16 17
18 19 20 21 22 23 24
25 26 27 28 29 30
EOS
	assert_equal expected, output
  end

  def test_dec_output
    output = `./cal.rb 012 2012`
    expected = <<EOS
   December 2012
Su Mo Tu We Th Fr Sa
                   1
 2  3  4  5  6  7  8
 9 10 11 12 13 14 15
16 17 18 19 20 21 22
23 24 25 26 27 28 29
30 31
EOS
	assert_equal expected, output
  end

end