class Winner
  attr_accessor :cells, :game_won, :player_won

  def initialize(params)
    @cells = params
    @player_won = ''
  end

  def win_combination
    [[@cells[0], @cells[1], @cells[2]], [@cells[3], @cells[4], @cells[5]],
     [@cells[6], @cells[7], @cells[8]], [@cells[0], @cells[3], @cells[6]],
     [@cells[1], @cells[4], @cells[7]], [@cells[2], @cells[5], @cells[8]],
     [@cells[0], @cells[4], @cells[8]], [@cells[2], @cells[4], @cells[6]]]
  end

  def check_if_win?
    win_combination.each do |arr|
      if arr.all?('x')
        @player_won = 'x'
        return true
      elsif arr.all?('o')
        @player_won = 'o'
        return true
      end
    end
    false
  end
end
