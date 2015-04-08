class OneHundredDoors

attr_reader :doors

  def initialize 
    @doors=Array.new(100, :closed)
  end

  def toggle_first_door
    if (@doors[0] == :closed) 
        @doors[0] = :open
    end
  end

  def toggle
    @doors.each_index do |door_index|
      if (@doors[door_index] == :closed)
        @doors[door_index] = :open
      end
    end
  end

end