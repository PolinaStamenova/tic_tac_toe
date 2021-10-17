class Table

  attr_accessor :string

  def initialize
    @string = (1..9).to_a.join        #maybe can find method to create string from 1 to 9
  end

  def display_table
    puts
    puts "  #{@string[0]} | #{@string[1]} | #{@string[2]}"
    puts "-------------"
    puts "  #{@string[3]} | #{@string[4]} | #{@string[5]}"
    puts "-------------"
    puts "  #{@string[6]} | #{@string[7]} | #{@string[8]}"
    puts
  end

  def replace_symbol(num, symbol)
    sleep 1
    @string = @string.gsub(num, symbol)
    display_table
  end
end

# test = Table.new
# test.replace_symbol("2","x")
