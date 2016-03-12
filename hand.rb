class Hand
  attr_reader :books, :cards

  def initialize(cards = [])
    @cards = cards
    @books = 0
  end

  def include?(value)
    @cards.each do |card|
      return true if card.value == value
    end
    false
  end

  def empty?
    @cards.empty?
  end

  def count
    @cards.count
  end

  def give_up(value)
    hand = @cards.dup
    losing_cards = []
    indexes = []
    if include?(value)
      hand.each.with_index do |card, index|
        losing_cards << card if card.value == value
        @cards.delete_at(index) if card.value == value
      end
    else
      []
    end
    losing_cards
  end

  def receive(new_cards)
    @cards.concat(new_cards)
  end

  # This method isn't tested, but we strongly recommend you implement it as a
  # helper method. It should return a hash mapping values to the number of
  # matching cards in the hand (e.g., { king: 2, deuce: 3 })
  def count_sets
  end

  def play_books
    book_values = {
      ace: 0,
      deuce: 0,
      three: 0,
      four: 0,
      five: 0,
      six: 0,
      seven: 0,
      eight: 0,
      nine: 0,
      ten: 0,
      jack: 0,
      queen: 0,
      king: 0
    }
    @cards.each do |card|
      value = card.value
      book_values[value] += 1 if book_values.keys.include?(value)
      if book_values[value] == 4
        book_values[value] == 0
        @books +=1
      end
    end
  end
end
