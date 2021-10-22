class CreatePlayer

  attr_accessor :players

  def initialize(params)
    @players = params
  end

  def create_player
    until @players.length == 2
      name, symbol = user_answer
      player = Player.new(name: name, symbol: symbol)
      puts
      sleep 0.3
      puts "#{name} plays with #{symbol}"
      @players << player
    end
  end
end


def user_answer
  puts
  print "Write your name: "
  name = gets.chomp.capitalize
  symbol = ''
  until ["x", "o"].include?(symbol)
    print 'Choose a symbol [x/o]: '
    symbol = gets.chomp.downcase
  end
  [name, symbol]
end