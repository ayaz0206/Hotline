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