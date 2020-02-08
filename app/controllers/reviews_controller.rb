class ReviewsController < ApplicationController
    
    get '/reviews' do
        erb :'/reviews/index'
    end

    get '/reviews/:id' do
        @review = Review.find_by_id(params[:id])
        erb :'/reviews/show'
    end

    get '/reviews/:id/edit' do
        @review = Review.find_by_id(params[:id])
        erb :'/reviews/edit'
    end

    patch '/reviews/:id' do
        @review = Review.find_by_id(params[:id])
        @review.five_star_rating = params[:review][:five_star_rating]
        @review.content = params[:review][:content]
        @review.save
        erb :'/reviews/show'
    end

    
    
    
    get '/reviews/new' do
        # binding.pry
        if !!params[:beer_id]
            @beer = Beer.find_by_id(params[:beer_id])
        end
        erb :'reviews/create_review'
    end

    post '/reviews' do
        # binding.pry
        if logged_in?
            # binding.pry
            if !params[:beer][:name].empty? && !params[:beer][:brand].empty?
                @beer = Beer.new(params[:beer])
                @beer.save
                @review = Review.new(user_id: current_user.id, beer_id: @beer.id, five_star_rating: params[:review][:five_star_rating], content: params[:review][:content])
                @review.save 
            else
                @beer = Beer.find_by_id(params[:review][:beer_id])
                @review = Review.new(params[:review])
                @review.user = current_user
                @review.save
            end
            redirect to "/beers/#{@beer.id}"
        else
            redirect to '/users/login'
        end
    end




end
