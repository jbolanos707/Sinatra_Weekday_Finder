require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the weekday finder path', {:type => :feature}) do
  it('processes the user entry and returns it as a day of the week') do
    visit('/') # go to main homepage (aka index.erb)
    fill_in('date', :with => '2015-04-21') # fill in the date field (aka Date to Evaluate)
    click_button('Convert') # click the button convert
    expect(page).to have_content('Tuesday') # weekday.erb page displays "Tuesday"
  end
end
