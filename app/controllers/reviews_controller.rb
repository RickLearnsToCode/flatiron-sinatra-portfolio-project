class ReviewsController < ApplicationController
    get '/reviews/new' do
        # binding.pry
        if !!params[:beer_id]
            @beer = Beer.find_by_id(params[:beer_id])
        end
        erb :'reviews/create_review'

    end



end
