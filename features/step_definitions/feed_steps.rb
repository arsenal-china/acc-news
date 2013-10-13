When(/^I give a name "(.*?)"$/) do |name|
  @arsenal = Feed.new
  @arsenal.name = name
end

When(/^I give a url "(.*?)"$/) do |url|
  @arsenal.url = url
end

Then(/^I have a valid record$/) do
  @arsenal.save!
  expect(@arsenal.name).to eq "Official"
  expect(@arsenal.url).to eq "http://www.arsenal.com/rssfeed"
end
