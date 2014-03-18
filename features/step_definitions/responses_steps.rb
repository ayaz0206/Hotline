Then(/^I reply to that question$/) do
  fill_in('response', with: 'This is a response')
  click_button('Reply')   
end

Then(/^I should see my response$/) do
  expect(page).to have_content('This is a response')
end