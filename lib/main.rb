require_relative "table"
require_relative "player"
require_relative "create_player"
require_relative "choose_number"
require_relative "game"
require_relative "selected_symbol"
require_relative "winner"
require_relative "display_winner"

class App

  attr_accessor :table, :players, :create_player, :choose_number, :selected_symbol, :game, :winner, :dispay_winner

  def initialize
    @players = []
    @table = Table.new
    @winner = Winner.new(@table.cells)
    @dispay_winner = DisplayWinner.new
    @create_player = CreatePlayer.new(@players)
    @choose_number = ChooseNumber.new
    @selected_symbol = SelectedSymbol.new(@players)
    @game = Game.new(@choose_number, @table, @selected_symbol, @winner)
  end

  def run
    puts "Play tic-tac-toe"
    puts
    sleep 0.5
    @create_player.create_player
    @table.display_table
    @game.display_game
    @dispay_winner.display_winner(@players, @winner.player_won)
  end
end

App.new.run