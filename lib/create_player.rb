class CreatePlayer

  attr_accessor :player

  def initialize
    @players = []
  end

  def create_player
    until @players.length == 2
      puts
      print "Write your name: "
      name = gets.chomp.capitalize
      print "Choose a symbol [x/o]: "
      symbol = gets.chomp
      player = Player.new(name, symbol)
      puts
      sleep 0.3
      puts "#{name} plays with #{symbol}"
      @players << player
    end
  end
end