require 'open-uri'
class Source < ActiveRecord::Base

  def get_feed
    rss = SimpleRSS.parse open(feed_url)
  end
end
