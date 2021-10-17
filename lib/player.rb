class Player

  attr_accessor :name, :symbol, :id

  @@id = 0

  def initialize(name, symbol)
    @@id += 1
    @id = @@id
    @name = name
    @symbol = symbol
  end

end

# player_one = Player.new("Polina", "x")
# player_two = Player.new("Polina", "o")
