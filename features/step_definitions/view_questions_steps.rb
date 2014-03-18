Given(/^I create a question$/) do
  Question.create(title: "How do I install Devise?", description: "Devise installation...")
end

Given(/^I am on the homepage$/) do
  visit root_path
end

Then(/^I see a question title$/) do
  expect(page).to have_content("How do I install Devise?")
end

Given(/^I click on a question title$/) do
  click_link "How do I install Devise?"
end

Then(/^I should see the question description$/) do
  expect(page).to have_content("Devise installation...")
end
