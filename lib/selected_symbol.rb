class SelectedSymbol
  attr_reader :players

  def initialize(players)
    @players = players
    @previous_symbol = ''
  end

  def choose_symbol
    @previous_symbol = if @previous_symbol.empty?
                         @players[0].symbol
                       elsif @previous_symbol == 'x'
                         'o'
                       else
                         'x'
                       end
    @previous_symbol
  end
end
