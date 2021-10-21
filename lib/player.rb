class Player

  attr_accessor :name, :symbol

  @@id = 0

  def initialize(params = {})
    @@id += 1
    @id = @@id
    @name = params[:name]
    @symbol = params[:symbol]
  end
end
