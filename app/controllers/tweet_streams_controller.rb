class TweetStreamsController < ApplicationController
  attr_accessor :twitter_client
  def new
  end

  def create
    @tweets = twitter_client.user_timeline(params[:twitter_handle])
  end

  def twitter_client
    @twitter_client ||= Twitter::REST::Client.new do |config|
                          config.consumer_key        = "W94h9TI21dRmkuDKewew2gy2t"
                          config.consumer_secret     = "4QOGnSWrT8vfxoUHohZFEtPFeCGlo47uhJatjL90BD73JGe3g7"
                        end
  end
end
