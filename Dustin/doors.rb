class Doors
  attr_reader :doors

  def initialize
    @doors = Array.new(100, false);
  end

  def number_of_open_doors
    open_count = 0
    @doors.each do |item|
      open_count += 1 if item
    end
    open_count
  end

  def do_single_pass(pass_num)
    @doors.each_index do |x|
        if (x + 1) % pass_num == 0
          @doors[x] = !@doors[x]
        end
    end
  end

  def do_consecutive_passes(number_of_passes)
    for i in 1..number_of_passes
      do_single_pass(i)
    end
  end

  def close_all_doors
    @doors =  Array.new(100, false);
  end

end
