require_relative "table"
require_relative "player"
require_relative "create_player"
require_relative "choose_number"
require_relative "game"
require_relative "selected_symbol"
require_relative "list_players"
require_relative "winner"

class App

  attr_accessor :table, :players, :create_player, :choose_number, :selected_symbol, :game, :winner

  def initialize
    @players = []
    @table = Table.new
    @winner = Winner.new(@table.cells)
    @create_player = CreatePlayer.new(@players)
    @list_players = ListPlayers.new(@player)
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
    @list_players.players
  end
end

App.new.run