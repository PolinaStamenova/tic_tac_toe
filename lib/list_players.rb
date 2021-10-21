class ListPlayers

  attr_accessor :players

  def initialize(params)
    @players = params
  end

  def list_players
    @players.each { |player| puts " Name: #{player.name} => #{player.symbol}" }
  end
end
