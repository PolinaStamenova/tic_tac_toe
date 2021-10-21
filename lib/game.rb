class Game


  def initialize(choose_number, table, selected_symbol, winner)
    @choose_number = choose_number
    @table = table
    @selected_symbol = selected_symbol
    @winner = winner
  end

  def display_game
    while  @table.full?
      @choose_number.choose_number
      @table.replace_symbol(@choose_number.number,  @selected_symbol.choose_symbol)
      break if  @winner.check_if_win?
    end
  end
end