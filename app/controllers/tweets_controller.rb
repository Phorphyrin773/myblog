class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all
  end
  
  def new
  end
  
  def create
    Tweet.create(tweet_params)
  end
  
    
  def show
  end
  
  def edit
  end
  
  def destroy
  end
  
  
  private
  def tweet_params
    params.permit(:title, :text)
  end

end
