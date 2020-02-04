class ReviewsController < ApplicationController
    get '/reviews/new' do
        if !!params[:beer_id]
            @beer = Beer.find_by_id(params[:beer_id])
        end
        erb :'reviews/new'

    end



end
