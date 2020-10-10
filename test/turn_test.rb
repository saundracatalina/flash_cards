require 'minitest/autorun'
require 'minitest/pride'
require './lib/turn'
require './lib/card'
require 'pry'

class TurnTest < Minitest::Test

  def test_it_exists
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card_1)
    assert_instance_of Turn, turn
  end

  def test_card_info
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card_1)
    assert_equal card_1, turn.card
    assert_equal "Juneau", turn.guess
    assert_equal true, turn.correct?
  end

  def test_if_user_gets_feedback
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card_1)
    assert_equal "Correct!", turn.feedback
  end

end
