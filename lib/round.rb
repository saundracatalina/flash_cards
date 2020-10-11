require 'pry'
class Round
  attr_reader :deck, :turns, :card_tracker, :current_turn
  def initialize(deck)
    @deck = deck
    @turns = []
    @card_tracker = 0
    @current_turn
  end

  def current_card
    @deck.cards[card_tracker]
  end

  def take_turn(guess)
    @current_turn = Turn.new(guess, @deck.cards[card_tracker])
    # @turns << turn
  end



end
