class SelectedSymbol

attr_reader :players

  def initialize(players)
    @players = players
    @previous_symbol = ""
  end

  def choose_symbol
    if @previous_symbol.empty?
      @previous_symbol = @players[0].symbol
      @previous_symbol
    elsif @previous_symbol == "x"
      @previous_symbol = "o"
      @previous_symbol
    else @previous_symbol == "o"
      @previous_symbol = "x"
      @previous_symbol
    end
  end
end