require_relative "table"
require_relative "player"
require_relative "create_player"
require_relative "choose_number"
require_relative "game"
require_relative "selected_symbol"
require_relative "list_players"


class App

  attr_accessor :table, :players
  attr_reader :create_player, :choose_number, :game

  def initialize
    @table = Table.new
    @create_player = CreatePlayer.new(@players)
    @choose_number = ChooseNumber.new
    @selected_symbol = SelectedSymbol.new(@players)
    @game = Game.new(@choose_number, @table, @selected_symbol)
  end

  def run
    puts "Play tic-tac-toe"
    puts
    sleep 0.5
    @create_player.create_player
    @table.display_table
    @game.display_game
  end
end

App.new.run