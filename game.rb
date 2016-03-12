require_relative 'deck'

class Game
  attr_reader :deck, :players

  def initialize(players, deck = Deck.new, deal = true)
    # ...
    deal_players_in if deal
    @players = players
    @deck = deck
    @deal = deal
  end

  def deal_players_in
    # DO NOT MODIFY
    players.each { |player| player.take(deck.deal(7)) }
  end

  # switch the current player
  def next_player!
  end

  def current_player
  end

  # returns all non-current players
  def other_players
  end

  def play
    until game_over?
      play_turn
    end

    puts "#{winner.name} wins!"
  end

  # If the current player receives cards, they take another turn (that is, this
  # method returns without passing the turn to the next player). Otherwise, the
  # current player has to "go fish" and the turn passes to the next player.
  def play_turn
  end

  def game_over?
    return false unless @players.empty?
    @deck.empty?
  end

  def winner
  end
end
