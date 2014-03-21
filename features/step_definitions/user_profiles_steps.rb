Given(/^I visit my profile page$/) do
  click_on('My Profile')

end

Then(/^I should see my profile$/) do
  expect(page).to have_content('Test')

end

Then(/^I should see questions I posted$/) do
  expect(page).to have_content("How do I install Devise?")
  expect(page).to have_content("Test Test")
  expect(page).to have_content('This is a response')
  expect(page).to have_content('Test Test')
end