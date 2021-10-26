require_relative 'board'
require_relative 'player'
require_relative 'game'
require_relative 'winner'
require_relative "object_class"

class App

  attr_accessor :game

  def initialize
    @game = Game.new
  end

  def run
    puts_sleep('Play tic-tac-toe', 0.5)
    is_runing = true
    while is_runing
      @game.create_player
      print 'Do you want to play one more game? [y/n]: '
      answer = gets.chomp
      if answer == 'n'
        is_runing = false
      else
        @game.reset_game
        run
      end
    end
  end
end

App.new.run
