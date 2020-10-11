require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'
require 'pry'

class RoundTest < Minitest::Test

  def setup
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    @card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    @card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    @deck = Deck.new([@card_1, @card_2, @card_3])
    @round = Round.new(@deck)
  end

  def test_deck_can_be_accessed
    assert_equal @deck, @round.deck
  end

  def test_turns_starts_as_empty_array
    assert_equal [], @round.turns
  end

  def test_current_card_is_card_1
    assert_equal @card_1, @round.current_card
  end

  # def test_take_new_turn_info
  #   new_turn = @round.take_turn("Juneau")
  #   assert_equal @turn_1.guess, new_turn
  # end

end
