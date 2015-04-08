
#Visists one door, opening it if closed and closing it if open
def visit(door)
  if door
    door = false
  else
    door = true
  end
end

#Visits a list of doors, a defined number of passes
def visit_all(doors, passes)
  (1..passes).each do |pass|
    doors.each_index do |index|
      if (index+1) % pass == 0
        doors[index] = visit(doors[index])
      end
    end
  end
end

#Prints out the status of all the doors in a list
def status(doors)
  open_doors = 0
  closed_doors = 0
  doors.each_with_index do |door, i|
    puts "Door #{i+1} = #{door}"
    if door
      open_doors += 1
    else
      closed_doors +=1
    end
  end
  puts "\nDoors open = #{open_doors}"
  puts "Doors closed = #{closed_doors}\n\n\n"
  return open_doors
end

  



