class Round
  attr_reader :deck, :turns, :card_tracker, :current_turn, :number_correct_tracker
  def initialize(deck)
    @deck = deck
    @turns = []
    @card_tracker = 0
    @current_turn
    @number_correct_tracker = 0
  end

  def current_card
    @deck.cards[card_tracker]
  end

  def take_turn(guess)
    @turns << Turn.new(guess, current_card)
    @card_tracker += 1
    @turns.last
  end

  def number_correct
    @number_correct_tracker += 1
    # if current_turn.correct? == true
    #   @number_correct_tracker +=1
    # else
    #   @number_correct_tracker
    # end
  end
end
