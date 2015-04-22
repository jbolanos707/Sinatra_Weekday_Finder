require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the weekday finder path', {:type => :feature}) do
  it('processes the user entry and returns it as a day of the week') do
    visit('/')
    fill_in('date', :with => '2015, 04, 22')
    click_button('Convert')
    expect(page).to have_content('Wednesday')
  end
end    
