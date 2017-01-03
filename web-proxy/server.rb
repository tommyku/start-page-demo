# frozen_string_literal: true
require 'sinatra'
require 'sinatra/cross_origin'
require 'awesome_print'
require 'forecast_io'
require 'json'

configure do
  enable :cross_origin
  set :port, 1080
  set :bind, '0.0.0.0'
end

# Dark Sky API, get your API key from:
# https://darksky.net/dev/
ForecastIO.api_key = 'YOUR_DARK_SKY_API_KEY'

get '/weather' do
  content_type :json
  ForecastIO.forecast(22.3986, 114.1929, params: {exclude: 'minutely,daily,alerts,flags', units: :si, lang: 'en'}).to_json
end
