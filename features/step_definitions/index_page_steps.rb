Given(/^there is a product named "(.*?)" with "(.*?)" description$/) do |name, description|
  @product = FactoryGirl.create(:product, name: name, description: description, price: 2)
end

When(/^I am on the indexpage$/) do
  visit root_path
end

Then(/^I should see the "(.*?)" product$/) do |name|
  @product = Product.find_by_name(name)

  page.should have_content(@product.name)
  page.should have_content(@product.description)
  page.should have_content(@product.price)
end

