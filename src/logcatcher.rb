require 'rubygems'
require 'sinatra'
require 'sinatra/base'

class LogcatcherApp < Sinatra::Base
	get '/log' do
		if params[:key] == ENV['LOGCATCHER_KEY']
			puts params[:message]
			status 200
		else
			status 403
		end
	end
end