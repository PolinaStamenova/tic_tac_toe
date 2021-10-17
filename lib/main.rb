require_relative "table"
require_relative "player"
require_relative "create_player"
require_relative "choose_number"

class App

  attr_reader :table, :create_player, :choose_number

  def initialize
    @table = Table.new
    @create_player = CreatePlayer.new
    @choose_number = ChooseNumber.new
  end

  def run
    puts "Play tic-tac-toe"
    puts
    sleep 0.5
    @create_player.create_player
    puts
    @table.display_table
    @choose_number.choose_number
    # p @choose_number.number
    # @table.replace_symbol("2", "x")
  end
end

App.new.run