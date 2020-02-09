class UsersController < ApplicationController
    get '/users/:slug' do
      @user = User.find_by_slug(params[:slug])
      erb :'users/show'
    end
  
    get '/signup' do
      if !logged_in?
        # flash[:message] = "Please sign up before you sign in" unless flash.has?(:message)
        erb :'users/create_user'
      else
        redirect to '/beers'
      end
    end
  
    post '/signup' do
      if params[:name] == "" || params[:username] == "" || params[:email] == "" || params[:password] == ""
        flash[:message] = "Fields may not be blank"
        redirect to '/signup'
      elsif !!User.find_by(email: params[:email]) || !!User.find_by(username: params[:username])
        flash[:message] = "The email or username already exists"
        redirect to '/signup'
      elsif !is_valid_email?(params[:email])
        flash[:message] = "Email address is an invalid format"
        redirect to '/signup'
      elsif !is_valid_text_input?(params[:name]) || !is_valid_text_input?(params[:username]) || !is_valid_text_input?(params[:password])
        flash[:message] = "Inputs may not exceed 35 characters"  
        redirect to '/signup'
      else
        @user = User.new(:name => params[:name], :username => params[:username], :email => params[:email], :password => params[:password])
        @user.save
        session[:user_id] = @user.id
        redirect to '/beers'
      end
    end
  
    get '/login' do
      if !logged_in?
        erb :'users/login'
      else
        redirect to '/beers'
      end
    end
  
    post '/login' do
      user = User.find_by(:username => params[:username])
      # binding.pry
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect to "/"
      else
        redirect to '/signup'
      end
    end
  
    get '/logout' do
      if logged_in?
        session.destroy
        redirect to '/login'
      else
        redirect to '/'
      end
    end
  end