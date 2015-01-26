namespace :db do
	desc 'Fill database with sources'
	task populate: :environment do
		Source.create(name: 'Slashdot',
			url: 'http://slashdot.org',
			feed_url: 'http://rss.slashdot.org/Slashdot/slashdot/to')

		Source.create(name: 'Kotaku',
			url: 'http://kotaku.com',
			feed_url: 'http://feeds.feedburner.com/gawker/yYqL')

		Source.create(name: 'Huffington Post',
			url: 'http://huffingtonpost.com',
			feed_url: 'http://www.huffingtonpost.com/feeds/index.xml')

		Source.create(name: 'New York Times',
			url: 'nytimes.com',
			feed_url: 'http://feeds.feedburner.com/nytimes/QwEB')

		Source.create(name: 'Reddit',
			url: 'http://reddit.com',
			feed_url: 'https://www.reddit.com/.rss')

		Source.create(name: 'Hacker News',
			url: 'https://news.ycombinator.com',
			feed_url: 'https://news.ycombinator.com/rss')

		Source.create(name: 'Google News',
			url: 'http://news.google.com',
			feed_url: 'https://news.google.com/?output=rss')

	end
end
