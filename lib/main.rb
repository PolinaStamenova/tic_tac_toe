require_relative "table"
require_relative "player"
require_relative "create_player"
require_relative "choose_number"
require_relative "game"
require_relative "list_players"


class App

  attr_accessor :table, :players
  attr_reader :create_player, :choose_number, :game

  def initialize
    @players = []
    @table = Table.new
    @create_player = CreatePlayer.new(@players)
    @choose_number = ChooseNumber.new
    @players_list = ListPlayers.new(@players)
    @game = Game.new(@choose_number, @table)
  end

  def run
    puts "Play tic-tac-toe"
    puts
    sleep 0.5
    @create_player.create_player
    puts
    @players_list.list_players
    @table.display_table
    @game.display_game
  end
end

App.new.run