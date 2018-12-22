class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all
  end
  
  def new
  end
  
  def create
    binding.pry
    Tweet.create(image: tweet_params[:image], text: tweet_params[:text], user_id: current_user.id)
  end
  
    
  def show
  end
  
  def edit
  end
  
  def destroy
  end
  
  
  private
  def tweet_params
    params.permit(:title, :text, :image)
  end

end
