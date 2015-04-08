require './checker'

describe "checker" do

  context "100 doors are closed on startup" do
    it "the 100 doors are closed" do
      doorObject = Doors.new
      doorObject.doors.count.should == (100)
      doorObject.doors.each { |door| door.should == false }
    end

    it "all 100 doors are open after first pass" do
      doorObject = Doors.new
      doorObject.visit(1)
      doorObject.doors.each { |door| door.should == true }
    end

    it "every other door is closed after second pass" do
      doorObject = Doors.new

      doorObject.visit(1)
      doorObject.visit(2)

      doorObject.doors[0].should == true
      doorObject.doors[1].should == false
      doorObject.doors[2].should == true
      doorObject.doors[3].should == false
      doorObject.doors[4].should == true
      doorObject.doors[5].should == false
      doorObject.doors[6].should == true
      doorObject.doors[7].should == false
      doorObject.doors[8].should == true
      doorObject.doors[9].should == false
      doorObject.doors[10].should == true
    end

    it "every other door is closed after second pass" do
      doorObject = Doors.new

      doorObject.visit(1)
      doorObject.visit(2)
      doorObject.visit(3)

      doorObject.doors[0].should == true
      doorObject.doors[1].should == false
      doorObject.doors[2].should == false
      doorObject.doors[3].should == false
      doorObject.doors[4].should == true
      doorObject.doors[5].should == true
      doorObject.doors[6].should == true
      doorObject.doors[7].should == false
      doorObject.doors[8].should == false
      doorObject.doors[9].should == false
      doorObject.doors[10].should == true
    end

  end

end