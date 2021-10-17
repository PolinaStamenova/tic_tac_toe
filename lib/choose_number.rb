class ChooseNumber

  attr_reader :number

  def initialize
    @number = number
  end

  def choose_number
    puts
    puts "=========================="
    print "Please, choose a number: "
    @number = gets.chomp
  end
end