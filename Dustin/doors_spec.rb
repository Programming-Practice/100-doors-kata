require_relative 'doors'

describe Doors do

  it 'will initialize an array of 100 items' do
    expect(subject.doors.length).to eq(100)
  end

  it 'will initialize all doors to be closed' do
    expect(subject.number_of_open_doors).to eq(0)
  end

  it 'after the first pass, all doors should show open' do
    subject.do_single_pass(1)
    expect(subject.number_of_open_doors).to eq(100)
  end

  it 'should show 50 doors open after pass 2' do
    subject.do_single_pass(2)
    expect(subject.number_of_open_doors).to eq(50)
  end

  it 'should show  doors open after pass 3' do
    subject.do_single_pass(3)
    expect(subject.number_of_open_doors).to eq(33)
  end

  it 'should show  doors open after pass 4' do
    subject.do_single_pass(4)
    expect(subject.number_of_open_doors).to eq(25)
  end

  it 'should show  doors open after pass 5' do
    subject.do_single_pass(5)
    expect(subject.number_of_open_doors).to eq(20)
  end

  it 'should show  doors open after pass 6' do
    subject.do_single_pass(6)
    expect(subject.number_of_open_doors).to eq(16)
  end

  it 'should show  doors open after pass 7' do
    subject.do_single_pass(7)
    expect(subject.number_of_open_doors).to eq(14)
  end

  it 'should show  doors open after pass 8' do
    subject.do_single_pass(8)
    expect(subject.number_of_open_doors).to eq(12)
  end

  it 'should show  doors open after pass 9' do
    subject.do_single_pass(9)
    expect(subject.number_of_open_doors).to eq(11)
  end

  it 'should show  doors open after all clean-slate passes' do
    for i in 10..100
      subject.do_single_pass(i)
      expect(subject.number_of_open_doors).to eq((100 / i).floor)
      subject.close_all_doors
    end
  end

  it 'should have the first door open after the first pass' do
    subject.do_single_pass(1)
    expect(subject.doors[0]).to eq(true)
  end

  it 'should have the first door open after the second pass' do
    subject.do_consecutive_passes(2)
    expect(subject.doors.slice(0, 2)).to eq([true, false])
  end

  it 'should have the first door open after the fourth pass' do
    subject.do_consecutive_passes(4)
    expect(subject.doors.slice(0, 4)).to eq([true, false, false, true])
  end

  it 'should have the first door open after the tenth pass' do
    subject.do_consecutive_passes(10)
    expect(subject.doors.slice(0, 10)).to eq([true, false, false, true, false, false, false, false, true, false])
  end

  it 'should show  doors open after 2 consecutive passes' do
    subject.do_consecutive_passes(2)
    expect(subject.number_of_open_doors).to eq(50)
  end

  it 'should show  doors open after 3 consecutive passes' do
    subject.do_consecutive_passes(3)
    expect(subject.number_of_open_doors).to eq(49)
  end

  it 'should show doors open after 100 consecutive passes' do
    subject.do_consecutive_passes(100)
    expect(subject.number_of_open_doors).to eq(10)
  end

  it 'should show all doors which numbers are perfect squares should be open' do
    subject.do_consecutive_passes(100)
    i = 1
    while i * i <= 100 do
      expect(subject.doors[(i * i) - 1]).to eq(true)
      i += 1
    end
  end

end
