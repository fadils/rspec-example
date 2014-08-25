# Read about factories at https://github.com/thoughtbot/factory_girl
FactoryGirl.define do 
  factory :product do |f| 
	  name 	"Test Name" 
	  description "Test description"
	  price 2 
  end 
end