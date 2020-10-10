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

  def test_if_user_gets_feedback_when_guess_is_correct
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card_1)
    assert_equal "Correct!", turn.feedback
  end

  def test_if_user_gets_feedback_when_guess_is_incorrect
    card_2 = Card.new("Which planet is closest to the sun?", "Mercury", :STEM)
    turn = Turn.new("Saturn", card_2)
    assert_equal "Incorrect.", turn.feedback
  end
end
