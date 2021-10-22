class Game


  def initialize(choose_number, board, selected_symbol, winner)
    @choose_number = choose_number
    @board = board
    @selected_symbol = selected_symbol
    @winner = winner
  end

  def display_game
    while  @board.full?
      @choose_number.choose_number
      @board.replace_symbol(@choose_number.number,  @selected_symbol.choose_symbol)
      break if  @winner.check_if_win?
    end
  end
end