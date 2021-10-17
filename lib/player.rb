class Player

  attr_accessor :name, :symbol

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end
end

# player_one = Player.new("Polina", "x")
# player_two = Player.new("Polina", "o")
