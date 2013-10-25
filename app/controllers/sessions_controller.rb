class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to root_url
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end

 def search
    @response = params[:search]
    #binding.pry
    #render json: @response

    if @response[:pdetails]
      @data = current_user.public_details
    end

    # if @response[:friends]
    #   @data += current_user.friends
    # end

    render json: @data
  end

 #{"pdetails"=>"true",
 # "friends"=>"false",
 # "photos"=>"false",
 # "photos_uploaded"=>"false",
 # "photos_tagged"=>"false",
 # "albums"=>"false",
 # "text_filter"=>"false",
 # "result_count"=>"false"}


end
