class Winner
  attr_accessor :player_won

  def initialize(params)
    @cells = params
    @game_won = false
    @player_won = ''
  end

  def check_if_win?
    row_one = @cells.slice(0, 3)
    row_two = @cells.slice(3, 3)
    row_three = @cells.slice(6, 3)

    row = [row_one, row_two, row_three]

    column_one = [row[0][0], row[1][0], row[2][0]]
    column_two = [row[0][1], row[1][1], row[2][1]]
    column_three = [row[0][2], row[1][2], row[2][2]]

    column = [column_one, column_two, column_three]

    cross_one = [row[0][0], row[1][1], row[2][2]]
    cross_two = [row[0][2], row[1][1], row[2][0]]

    cross = [cross_one, cross_two]

    combination = [row, column, cross]

    combination.each do |elem|
      elem.each do |i|
        if i.all?('x')
          @player_won = 'x'
          @game_won = true
        elsif i.all?('o')
          @player_won = 'o'
          @game_won = true
        end
      end
    end
    @game_won
  end
end
