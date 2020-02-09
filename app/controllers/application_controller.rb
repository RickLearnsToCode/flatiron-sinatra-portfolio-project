require './config/environment'
require 'rack-flash'

class ApplicationController < Sinatra::Base
  VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  use Rack::Flash

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "sinatra_secret"
  end

  get '/' do
    erb :index
  end

  helpers do

    def logged_in?
      !!current_user
    end

    def current_user
      @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end

    def is_valid_email?(email)
      email =~ VALID_EMAIL_REGEX
    end

    def is_valid_text_input?(text)
      text.length <= 35
    end


  end
end