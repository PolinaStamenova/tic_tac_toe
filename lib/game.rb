require_relative "object_class"

class Game

  def initialize
    @players = []
    @previous_symbol = ''
    @board = Board.new
    @winner = Winner.new(@board.cells)
  end

  def create_player
    until @players.length == 2
      name = get_user_name
      symbol = get_user_symbol
      if @players.first&.symbol != symbol
        player = Player.new(name: name, symbol: symbol)
        puts_sleep(' ', 0.3)
        puts "#{name} plays with #{symbol}"
        @players << player
      end
    end
    display_game
  end

  def get_user_symbol
    answer =  raise_error_symbol
  rescue ArgumentError => e
    puts e.message
    get_user_symbol
  end

  def raise_error_symbol
    print "Choose a symbol [x/o]: "
    symbol = gets.chomp.downcase
    raise ArgumentError, "Please, choose a symbol 'x' or 'o'!" unless ["x", "o"].include?(symbol)
    symbol
  end

  def get_user_name
    print "\n", 'Write your name: '
    gets.chomp.capitalize
  end

  def choose_number
    puts "\n", '========================'
    print 'Please, choose a number: '
    gets.chomp.to_i
  end

  def choose_symbol
    @previous_symbol = if @previous_symbol.empty?
                         @previous_symbol = @players[0].symbol
                       elsif @previous_symbol == 'x'
                         'o'
                       else
                         'x'
                       end
    @previous_symbol
  end

  def display_game
    @board.display_board
    while @board.not_full?
      @board.replace_symbol(choose_number, choose_symbol)
      break if @winner.check_if_win?
    end
    display_winner
  end

  def display_winner
    @players.each { |player| puts "#{player.name} won the game!" if @winner.player_won == player.symbol }
  end

  def reset_game
    @board = Board.new
    @winner = Winner.new(@board.cells)
    @players = []
    @previous_symbol = ''
  end
end
