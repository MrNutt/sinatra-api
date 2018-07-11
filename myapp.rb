require 'sinatra'
require 'json'
require 'net/http'
require "rubygems"

params = []

get '/' do
    erb :index
end

get '/test-request' do
    @params = params
    erb :test_request
end

post '/test-request' do
     params << JSON.parse(request.body.read)
     params.inspect
end