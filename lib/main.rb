require_relative "table"
require_relative "player"
require_relative "create_player"

class App

  attr_reader :table, :create_player

  def initialize
    @table = Table.new
    @create_player = CreatePlayer.new
  end

  def run
    puts "Play tic-tac-toe"
    puts
    sleep 0.5
    @create_player.create_player
    puts
    @table.display_table
    # @table.replace_symbol("2", "x")
  end
end

App.new.run