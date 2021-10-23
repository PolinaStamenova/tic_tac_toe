class Board
  attr_accessor :cells

  def initialize
    @cells = (1..9).to_a
  end

  def display_board
    puts "\n", "  #{@cells[0]} | #{@cells[1]} | #{@cells[2]}"
    puts '-------------'
    puts "  #{@cells[3]} | #{@cells[4]} | #{@cells[5]}"
    puts '-------------'
    puts "  #{@cells[6]} | #{@cells[7]} | #{@cells[8]}", "\n"
  end

  def replace_symbol(num, symbol)
    sleep 0.5
    case @cells[num - 1]
    when Numeric
      @cells[num - 1] = symbol
    when String
      sleep 0.3
      puts "\n", 'This filed is already choosen, please choose another one'
      sleep 2
      @cells[num - 1] = @cells[num - 1]
    end
    display_board
  end

  def full?
    cells.any?(Numeric)
  end
end
