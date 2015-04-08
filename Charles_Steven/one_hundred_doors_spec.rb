require './one_hundred_doors'

describe "OneHundredDoors" do

   it "should initialize 100 doors in the closed state" do
    
    one_hundred_doors=OneHundredDoors.new
    
    (0..99).each do |door_number|
      one_hundred_doors.doors[door_number].should == :closed
    end

   end

  it "should toggle door one" do
    one_hundred_doors=OneHundredDoors.new
    
    one_hundred_doors.toggle_first_door
    one_hundred_doors.doors[0].should == :open
  end

  it "should have all doors open after first pass" do

    one_hundred_doors=OneHundredDoors.new
    
    one_hundred_doors.toggle



    (0..99).each do |door_number|
      one_hundred_doors.doors[door_number].should == :open
    end     


  end

  

end