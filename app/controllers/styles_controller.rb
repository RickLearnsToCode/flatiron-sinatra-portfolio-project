class StylesController < ApplicationController
    
    get '/styles' do
        erb :'/styles/index'
    end

    get '/styles/new' do
        erb :'/styles/create_style'
    end

    post '/styles' do
        @style = Style.new(params[:style])
        @style.save
        redirect to "/styles/#{@style.id}"
    end


    get '/styles/:id/edit' do
        if current_user.id == 1
            @style = Style.find_by_id(params[:id])
            erb :'/styles/edit'
        else
            redirect to "/styles/#{params[:id]}"
        end

    end

    patch '/styles/:id' do
        if current_user.id == 1
            @style = Style.find_by_id(params[:id])
            @style.name = params[:style][:name]
            @style.description = params[:style][:description]
            @style.save
        end
        redirect to "/styles/#{params[:id]}"
    end



    get '/styles/:id' do
        @style = Style.find_by_id(params[:id])
        erb :'/styles/show'
    end




end
