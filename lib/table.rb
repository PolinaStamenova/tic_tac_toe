class Table

  attr_accessor :cells

  def initialize
    @cells = (1..9).to_a       #maybe can find method to create cells from 1 to 9
  end

  def display_table
    puts
    puts "  #{@cells[0]} | #{@cells[1]} | #{@cells[2]}"
    puts "-------------"
    puts "  #{@cells[3]} | #{@cells[4]} | #{@cells[5]}"
    puts "-------------"
    puts "  #{@cells[6]} | #{@cells[7]} | #{@cells[8]}"
    puts
  end

  def replace_symbol(num, symbol)
    sleep 0.5
    @cells[num-1] = symbol
    display_table
  end

  def full?
    cells.any?(Numeric)
  end
end

