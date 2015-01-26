require 'open-uri'
class Source < ActiveRecord::Base

  def get_feed
    rss = SimpleRSS.parse open(feed_url)
  end

  def self.export_as_task
    output_file = Rails.root.join('sample_data.rake')
    File.open(output_file, 'w') do |file|
      file.puts("namespace :db do\n")
      file.puts("\tdesc 'Fill database with sources'\n")
      file.puts("\ttask populate: :environment do\n")
      Source.all.each do |source|
        file.puts("\t\tSource.create(name: '#{source.name}',\n")
        file.puts("\t\t\turl: '#{source.url}'\n")
        file.puts("\t\t\tfeed_url: '#{source.feed_url}')\n\n")
      end
      file.puts("\tend\n")
      file.puts("end\n")
    end

  end
end
