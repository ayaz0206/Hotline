Given(/^I visit my profile page$/) do
  click_link('My Profile')
end

Then(/^I should see my profile$/) do
  expect(page).to have_content("Test Test")
end

Then(/^I should see questions I posted$/) do
  expect(page).to have_content("How do I install Devise?")
  save_and_open_page
end