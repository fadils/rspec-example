Given(/^I'm on the newpage$/) do
	visit new_product_path
end

When(/^I add a new product$/) do
    fill_in 'product[name]', :with => 'Bourne'
    fill_in 'product[description]', :with => 'Best Book'
    fill_in 'product[price]', :with => 10
    click_button 'Upload'
end

Then(/^I should see the page for my newly created product$/) do
  @product = Product.find_by_name('Bourne')

  page.should have_content('Bourne')
  page.should have_content('Best Book')
  page.should have_content(10)
end