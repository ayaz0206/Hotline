Then(/^I reply to that question$/) do
  fill_in('response', with: 'This is a response')
  click_button('Reply')   
end

When(/^I reply to that question again$/) do
  fill_in('response', with: 'This is a second response')
  click_button('Reply')   
end

Then(/^I should see my response with my fullname$/) do
  expect(page).to have_content('This is a response')
  expect(page).to have_content('Test Test')
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

Then(/^I cannot see google hangout buttons$/) do
  page.should_not have_xpath("//div[@class='g-hangout']")
end

Then(/^I see the google hangout buttons$/) do
  page.should have_xpath("//div[@class='g-hangout']")
  page.should have_xpath("//div[@id='placeholder-div3']")
end

Then(/^I should be able to select the best answer$/) do
  # find("//*[@id='mark-answer']/li[2]/input[@class='correct-ans']").choose
end

Then(/^The best answer should appear on top$/) do

end

Then(/^I should not be able to select the best answer$/) do
  page.should have_no_xpath("//li/aside/img")
end

