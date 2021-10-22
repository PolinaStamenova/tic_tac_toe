class Player
  attr_accessor :name, :symbol

  @@id = 0

  def initialize(params = {})
    @id = @@id
    @name = params[:name]
    @symbol = params[:symbol]
    @@id += 1
  end
end
