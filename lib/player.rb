class Player
  attr_accessor :name, :symbol

  ID = 0

  def initialize(params = {})
    @id = ID
    @name = params[:name]
    @symbol = params[:symbol]
    ID += 1
  end
end
