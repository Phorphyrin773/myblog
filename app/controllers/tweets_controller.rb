class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all
  end
  
  def new
    @tweet = Tweet.new
  end
  
  def create
    Tweet.create(image: tweet_params[:image], title: tweet_params[:title], text: tweet_params[:text], user_id: current_user.id)
  end
  
  
  def edit
    @tweet = Tweet.find(params[:id])
  end
  
  def update
    tweet = Tweet.find(params[:id])
    if tweet.user_id == current_user.id
      tweet.update(tweet_params)
    end
  end
  
  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy if tweet.user_id == current_user.id
  end
  
  
  private
  def tweet_params
    params.require(:tweet).permit(:title, :text, :image)
  end

end
