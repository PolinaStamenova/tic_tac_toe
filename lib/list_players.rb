class ListPlayers

  attr_accessor :players

  def initialize(players)
    @players = players
  end

  def list_players
    @players
    # @players.each { |player| puts " Name: #{player.name} => #{player.symbol}" }
  end
end
