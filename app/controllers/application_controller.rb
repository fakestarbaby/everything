class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user
  helper_method :twitter

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def twitter
    Twitter.configure do |config|
      config.consumer_key = TWITTER_CONSUMER_KEY
      config.consumer_secret = TWITTER_CONSUMER_SECRET
      config.oauth_token = current_user.token
      config.oauth_token_secret = current_user.secret
    end
    @twitter = Twitter::Client.new
  end
end
