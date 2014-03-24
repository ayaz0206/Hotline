Given(/^I create a question$/) do
  visit root_path
  visit "/auth/google_oauth2"
  click_link('Ask Question') 
  fill_in('question[title]', :with => 'How do I install Devise?')
  fill_in('question[description]', :with => "Devise description")
  click_button('Ask')
  visit "/signout"
end

Given(/^I am on the homepage$/) do
  visit root_path
end

Then(/^I see a question title with questioners fullname$/) do
  expect(page).to have_content("How do I install Devise?")
  expect(page).to have_content("Test Test")
end

Given(/^I click on a question title$/) do
  click_link "How do I install Devise?"
end

Then(/^I should see the question description$/) do
  expect(page).to have_content("Devise description")
end

Given(/^I create second question$/) do
  visit root_path
  visit "/auth/google_oauth2"
  click_link('Ask Question') 
  fill_in('question[title]', :with => 'A second question?')
  fill_in('question[description]', :with => "A second answer!!")
  click_button('Ask')
  visit "/signout"
end

Then(/^I should see questions in reverse chronological order$/) do
  first = find("//*[@class='home-feed']//li[1]/a").text
  second = find("//*[@class='home-feed']//li[2]/a").text
  expect(first).to eq('A second question?')
  expect(second).to eq('How do I install Devise?')
end
