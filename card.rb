class Card
  SUIT_STRINGS = {
    clubs: '♣',
    diamonds: '♦',
    hearts: '♥',
    spades: '♠'
  }

  VALUE_STRINGS = {
    ace: 'A',
    deuce: '2',
    three: '3',
    four: '4',
    five: '5',
    six: '6',
    seven: '7',
    eight: '8',
    nine: '9',
    ten: '10',
    jack: 'J',
    queen: 'Q',
    king: 'K'
  }

  attr_reader :suit, :value

  def self.all_cards
    all_cards = []

    SUIT_STRINGS.each do |suit, suit_string|
      VALUE_STRINGS.each do |value, value_string|
        all_cards << Card.new(suit, value)
      end
    end

    all_cards
  end

  def self.suits
    SUIT_STRINGS.keys
  end

  def self.values
    VALUE_STRINGS.keys
  end

  def initialize(suit, value)
    raise if !SUIT_STRINGS.include?(suit) || !VALUE_STRINGS.include?(value)
    @suit = suit
    @value = value
  end

  def to_s
    "#{VALUE_STRINGS[value]} #{SUIT_STRINGS[suit]}"
  end
end
