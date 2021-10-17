require_relative "table"
require_relative "player"
require_relative "create_player"
require_relative "choose_number"
require_relative "game"

class App

  attr_reader :table, :create_player, :choose_number, :game

  def initialize
    @table = Table.new
    @create_player = CreatePlayer.new
    @choose_number = ChooseNumber.new
    # @selected_symbol
    @game = Game.new(@choose_number, @table)
  end

  def run
    puts "Play tic-tac-toe"
    puts
    sleep 0.5
    @create_player.create_player
    puts
    @table.display_table
    @game.display_game
  end
end

App.new.run