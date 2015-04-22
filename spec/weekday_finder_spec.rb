require('rspec')
require('weekday_finder')

describe('Time#weekday_finder') do
  it("recognizes if date falls on a sunday") do
    expect(Time.new(2015, 4, 19).weekday_finder()).to(eql("Sunday"))
  end
  it("recognizes the correct day of week") do
    expect(Time.new(2015, 4, 18).weekday_finder()).to(eql("Saturday"))
  end
end
