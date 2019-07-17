gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class SelectPatternTest < Minitest::Test

  def test_pick_even_numbers
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    evens = []
    numbers.each do |number|
      evens << number if number.even?
    end
    assert_equal [2, 4, 6, 8, 10], evens
  end

  def test_pick_odd_numbers
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    odds = []
    numbers.each do |number|
        odds << number if number.odd?
    end
    assert_equal [1, 3, 5, 7, 9], odds
  end

  def test_pick_words_with_three_letters
    words = ["pill", "bad", "finger", "cat", "blue", "dog", "table", "red"]
    selected = []
    words.each do |w|
        selected << w if w.length  == 3
    end
    assert_equal ["bad", "cat", "dog", "red"], selected
  end

  def test_pick_words_with_more_than_three_letters
    words = ["pill", "bad", "finger", "cat", "blue", "dog", "table", "red"]
    selected = []
    words.each do |w|
        selected << w if (w.length > 3)
    end
    assert_equal ["pill", "finger", "blue", "table"], selected
  end

  def test_pick_words_ending_in_e
    words = ["are", "you", "strike", "thinking", "belt", "piece", "warble", "sing", "pipe"]
    selected = []
    words.each do |w|
        selected << w if (w[-1] == 'e')
    end
    assert_equal ["are", "strike", "piece", "warble", "pipe"], selected
  end

  def test_pick_words_ending_in_ing
    words = ["bring", "finger", "drought", "singing", "bingo", "purposeful"]
    selected = []
    words.each {|w| selected << w if (w.end_with? "ing")}
    assert_equal ["bring", "singing"], selected
  end

  def test_pick_words_containing_e
    words = ["four", "red", "five", "blue", "pizza", "purple"]
    selected = []
    words.each {|w| selected << w if (w.include? "e")}
    assert_equal ["red", "five", "blue", "purple"], selected
  end

  def test_pick_dinosaurs
    animals = ["tyrannosaurus", "narwhal", "eel", "achillesaurus", "qingxiusaurus"]
    selected = []
    animals.each {|w| selected << w if (w.end_with? "urus")}
    # Your code goes here
    assert_equal ["tyrannosaurus", "achillesaurus", "qingxiusaurus"], selected
  end

  def test_pick_floats
    numbers = [3, 1.4, 3.5, 2, 4.9, 9.1, 8.0]
    floats = []
    numbers.each {|n| floats << n if (n.is_a? Float)}
    assert_equal [1.4, 3.5, 4.9, 9.1, 8.0], floats
  end

  def test_pick_arrays
    elements = ["CAT", ["dog"], 23, [56, 3, 8], "AIMLESS", 43, "butter"]
    arrays = []
    elements.each {|n| arrays << n if (n.is_a? Array)}
    assert_equal [["dog"], [56, 3, 8]], arrays
  end

  def test_pick_hashes
    elements = ["cat", {:dog=>"fido"}, 23, {:stuff=>"things"}, "aimless", 43]
    hashes = []
    elements.each {|n| hashes << n if (n.is_a? Hash)}
    assert_equal [{:dog=>"fido"}, {:stuff=>"things"}], hashes
  end

end
