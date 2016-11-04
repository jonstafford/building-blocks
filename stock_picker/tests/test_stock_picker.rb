require "./lib/stock_picker.rb"
require "test/unit"

class TestStockPicker < Test::Unit::TestCase

  def test_one_price
    assert_equal([0, 1], stock_picker([1, 2]))
  end
  
  def test_prices_only_going_down
    assert_equal([], stock_picker([6,5,3,1]))
  end
  
  def test_great_price_difference_followed_by_ok_price_difference
    assert_equal([0, 1], stock_picker([14, 18, 4, 6]))
  end  
  
  def test_many_prices
    assert_equal([1, 4], stock_picker([17,3,6,9,15,8,6,1,10]))
  end

end