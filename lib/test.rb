require 'colorize'

  def choose_number
    print "Choose a number between 1 and 3: "
    answer = gets.chomp.to_i
    raise ArgumentError, "num shloud be " unless answer.between?(1,3)
    answer
  end


  def play
  answer =  choose_number
  rescue ArgumentError => e
    puts e.message
    play
  end


  def polina
    puts "I am now red".red
    puts "I am now blue".blue
    puts "Testing".yellow
    puts "POLINA".green
  end

# p polina

class String
  def black;          "\e[30m#{self}\e[0m" end
  def red;            "\e[31m#{self}\e[0m" end
end

# p String.new.red("polina")
# puts 'Polina'.red


puts "Jordy".light_magenta
