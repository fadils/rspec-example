Given(/^I want to click an existing product named "(.*?)" with description "(.*?)"$/) do |name, description|
	@product = FactoryGirl.create(:product, name: name, description: description, price: 2)
end

When(/^I click product link on index page$/) do
	visit root_path
    click_link 'Bourne'
end

Then(/^I should see the page showing product details$/) do
  page.should have_content('Bourne')
  page.should have_content('Best Book')
  page.should have_content('Price')
  page.should have_content('Uploaded')
end