Then(/^I reply to that question$/) do
  fill_in('response', with: 'This is a response')
  click_button('Reply')   
end

Then(/^I should see my response$/) do
  expect(page).to have_content('This is a response')
end

Then(/^I reply with no response$/) do
  fill_in('response', with: '')
  click_button('Reply')   
end

Then(/^I should see an error$/) do
  expect(page).to have_content("Response can't be blank")
end

Then(/^I should not see the reply section$/) do
  page.should_not have_xpath("//*[@name='response']")
  page.should_not have_xpath("//input[@name='commit']")
end