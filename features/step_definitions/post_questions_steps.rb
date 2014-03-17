Given(/^I click on "(.*?)"$/) do |link|
  click_link(link) 
end

Then(/^I can create a question$/) do
  fill_in('question[title]', :with => 'How do I install Devise?')
  fill_in('question[description]', :with => "Long Text..")
  click_button('Ask')
end

Then(/^I can see the full question detail$/) do
  expect(page).to have_content("How do I install Devise?")
end

Then(/^I see the message "(.*?)"$/) do |message|
  expect(page).to have_content(message)
end

Given(/^I only fill in the decription$/) do
  fill_in('question[description]', :with => "Long Text..")
end

Given(/^I click "(.*?)"$/) do |button|
  click_button('Ask')
end

Given(/^I only fill in the title$/) do
  fill_in('question[title]', :with => 'How do I install Devise?')
end

Then(/^I should see an error "(.*?)"$/) do |error|
  expect(page).to have_content(error)
end
