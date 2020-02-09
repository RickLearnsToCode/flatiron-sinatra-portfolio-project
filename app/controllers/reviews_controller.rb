class ReviewsController < ApplicationController
    
    get '/reviews' do
        erb :'/reviews/index'
    end
    
    get '/reviews/new' do
        # binding.pry
        if !!params[:beer_id]
            @beer = Beer.find_by_id(params[:beer_id])
        end
        if logged_in?
            erb :'reviews/create_review'
        else
            flash[:message] = "You must be logged in to add a review"
            erb :'/index'
        end
    end

    get '/reviews/:id/edit' do
        @review = Review.find_by_id(params[:id])
        if @review.user == current_user
            erb :'/reviews/edit'
        else
            flash[:message] = "You may not edit another user's review"
            erb :"/reviews/show"
        end
    end
    
    get '/reviews/:id' do
        @review = Review.find_by_id(params[:id])
        erb :'/reviews/show'
    end



    patch '/reviews/:id' do
        @review = Review.find_by_id(params[:id])
        @review.five_star_rating = params[:review][:five_star_rating]
        @review.content = params[:review][:content]
        @review.save
        erb :'/reviews/show'
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
                # binding.pry 
                @beer = Beer.find_by_id(params[:review][:beer_id])
                @review = Review.new(params[:review])
                @review.user = current_user
                @review.save
            end
            redirect to "/beers/#{@beer.id}"
        else
            redirect to '/login'
        end
    end

    delete '/reviews/:id' do
        @review = Review.find_by_id(params[:id])
        if current_user == @review.user 
            @review.delete
        end
        redirect to '/reviews'
    end


end
