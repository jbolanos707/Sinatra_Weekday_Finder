require('sinatra')
require('sinatra/reloader')
require('./lib/weekday_finder')
also_reload('lib/**/*.rb')
require('pry')

get ('/') do
  erb(:index)
end

get ('/weekday') do #routing to weekday pg
  @date = params.fetch('date').weekday_finder() #calling @date which means taking 'date' (referenced in the index.erb file) and applying the method weekday_finder to the date entered.
  erb(:weekday) #returning @date which means it will display the day of the week in the weekday.erb page.
end
