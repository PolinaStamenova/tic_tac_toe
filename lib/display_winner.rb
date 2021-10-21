class DisplayWinner
  def display_winner(players, symbol_winner)
    players.each { |player| puts "#{player.name} won the game!" if symbol_winner == player.symbol}
  end
end