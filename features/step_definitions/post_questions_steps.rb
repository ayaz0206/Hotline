Given(/^I click on "(.*?)"$/) do |link|
  click_link(link) 
end

Then(/^I can create a question$/) do
  fill_in('question[title]', :with => 'How do I install Devise?')
  fill_in('question[description]', :with => "Devise description")
  click_button('Ask')
end

Then(/^I can see the complete question detail with my fullname$/) do
  expect(page).to have_content("How do I install Devise?")
  expect(page).to have_content("Test Test")
end

Then(/^I see the message "(.*?)"$/) do |message|
  expect(page).to have_content(message)
end

Given(/^I only fill in the decription$/) do
  fill_in('question[description]', :with => "Devise description")
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

Given(/^I am logged in$/) do
  visit "/auth/google_oauth2"
end

Given(/^I am not logged in$/) do
  visit "/signout"
end

Then(/^I cannot create a question$/) do
  expect(page).not_to have_content('Ask A Dev')
  visit '/questions/new'
  page.should_not have_xpath("//input[@name='question[title]']")
  page.should_not have_xpath("//input[@name='question[description]']")
end

Then(/^I can see google hangout on air button$/) do
  page.should have_xpath("//div[@id='placeholder-div3']")
end
