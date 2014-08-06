When(/^I run command "(.*?)"$/) do |cmd|
  args=Array.new
  args<<cmd
  Blogdown::Cli::CommandLine.start args
end


When(/^I visit "(.*?)"$/) do |arg1|
end

Then(/^I should see an Index Page$/) do
  pending # express the regexp above with the code you wish you had
end
