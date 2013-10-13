require 'spec_helper'

describe Feed do
  it "save a feed with name and url" do
    feed = Feed.create!(name: "Official", url: "http://www.arsenal.com/rssfeed")
    expect(feed.name).to eq "Official"
    expect(feed.url).to eq "http://www.arsenal.com/rssfeed"
  end

  context "validations" do
    let(:feed) { Feed.new }

    it "must have a name" do
      feed.url = "http://www.arsenal.com/rssfeed"
      expect { feed.save! }.to raise_error
    end

    it "must have a url" do
      feed.name = "Official"
      expect { feed.save! }.to raise_error
    end
  end
end
