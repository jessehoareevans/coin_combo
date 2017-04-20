require('sinatra')
require('sinatra/reloader')
require('./lib/coins')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/coins_combination') do
  @coin = params.fetch('coin').combination()
  erb(:coin)
end
