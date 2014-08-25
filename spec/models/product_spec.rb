require 'spec_helper'

describe Product do
  it "has a valid factory" do 
  	FactoryGirl.create(:product).should be_valid 
  end

  it { should validate_presence_of(:name) }
  it { should ensure_length_of(:name).is_at_least(3) }
  it { should validate_presence_of(:description) }
  it { should ensure_length_of(:description).is_at_least(3) }
  it { should validate_presence_of(:price) }
  it { should validate_numericality_of(:price) }
  it { should_not allow_value(-1).for(:price) }
  it { should_not allow_value(0).for(:price) }

end
