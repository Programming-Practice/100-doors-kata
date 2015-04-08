class Doors
  def initialize
    @doors = Array.new(100, false)
  end

  def doors
    @doors
  end

  def open
    true
  end

  def visit (iteration)
    index = iteration - 1

    while index < 100 do
      @doors[index] = !@doors[index]
      index = index + iteration
    end

  end

end