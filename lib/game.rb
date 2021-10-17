class Game
  def initialize(choose_number, table, selected_symbol)
    @choose_number = choose_number
    @table = table
    @selected_symbol = selected_symbol
  end

  def display_game
    while  @table.string.include? ("1" && "2" "3" && "4" "5" && "6" "7" && "8" && "9")
      @choose_number.choose_number
      @table.replace_symbol(@choose_number.number,  @selected_symbol.choose_symbol) # selected_symbol
    end
    # call method to see ho is the winner
  end
end