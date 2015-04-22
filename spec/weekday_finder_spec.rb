require('rspec')
require('weekday_finder')

describe('String#weekday_finder') do
  it("detects date and outputs day of the week") do
    expect(("2015-04-21").weekday_finder()).to(eq("Tuesday"))
  end
end
