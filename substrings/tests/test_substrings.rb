require "./lib/substrings.rb"
require "test/unit"

class TestSubstrings < Test::Unit::TestCase

  @@dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

  def test_one_word
    assert_equal({"below"=> 1, "low"=> 1}, substrings("below", @@dictionary))
  end
  
  def test_many_words
    assert_equal({
      "down"=>1, 
      "how"=>2, 
      "howdy"=>1,
      "go"=>1, 
      "going"=>1, 
      "it"=>2, 
      "i"=> 3, 
      "own"=>1,
      "part"=>1,
      "partner"=>1,
      "sit"=>1
      } , substrings("Howdy partner, sit down! How's it going?", @@dictionary))
  end
  

end