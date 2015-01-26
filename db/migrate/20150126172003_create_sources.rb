class CreateSources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.string :name
      t.string :feed_url
      t.string :url

      t.timestamps null: false
    end
  end
end
