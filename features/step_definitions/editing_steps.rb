Given(/^I click on a question$/) do
  click_link "How do I install Devise?"
end

When(/^I click on the edit link$/) do
  click_link("edit")
end

When(/^I edit the title content$/) do
  fill_in('question[title]', :with => "Editing text")
end

Then(/^I edit the description content$/) do
  fill_in('question[description]', :with => "Editing text")
end

Then(/^I click the Save button$/) do
  click_button("Save")
end
