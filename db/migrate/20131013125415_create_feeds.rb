class CreateFeeds < ActiveRecord::Migration
  def change
    create_table :feeds do |t|
      t.string :name
      t.string :url

      t.timestamps
    end
    add_index :feeds, :name, unique: true
    add_index :feeds, :url, unique: true
  end
end
