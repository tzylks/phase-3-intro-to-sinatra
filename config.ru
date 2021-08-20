require 'sinatra'

class App < Sinatra::Base

  get '/dice' do
    dice_roll = rand(1..6)
    100.times do 
    { roll: dice_roll }.to_json
    end
  end

end

run App