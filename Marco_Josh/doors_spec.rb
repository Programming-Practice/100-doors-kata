require './doors'

describe "100 doors kata" do

  context "Lets open some doors" do

    it "opens 1 door" do
      expect(visit(false)).to eq (true)
    end

    it "closes 1 door" do
      expect(visit(true)).to eq (false)

    end

    it "visits all doors 1 time" do
      doors = Array.new(100, false);
      visit_all(doors, 1)
      expect(status(doors)).to eq(100)
    end

    it "visits all doors 5 times" do
      doors = Array.new(100, false);
      visit_all(doors, 5)
      expect(status(doors)).to eq(52)
    end

    it "visits all doors 10 times" do
      doors = Array.new(100, false);
      visit_all(doors, 10)
      expect(status(doors)).to eq(49)
    end

    it "visits all doors 50 times" do
      doors = Array.new(100, false);
      visit_all(doors, 50)
      expect(status(doors)).to eq(54)
    end

    it "visits all doors 100 times" do
      doors = Array.new(100, false);
      visit_all(doors, 100)
      expect(status(doors)).to eq(10)
      expect(doors[0]).to eq(true)
      expect(doors[3]).to eq(true)
      expect(doors[8]).to eq(true)
      expect(doors[15]).to eq(true)
      expect(doors[24]).to eq(true)
      expect(doors[35]).to eq(true)
      expect(doors[48]).to eq(true)
      expect(doors[63]).to eq(true)
      expect(doors[80]).to eq(true)
      expect(doors[99]).to eq(true)
    end

  end

end
