class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all
  end
  
  def new
  end
  
  def show
  end
  
  def edit
  end
  
  def destroy
  end

end
