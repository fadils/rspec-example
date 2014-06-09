class Product < ActiveRecord::Base

  validates :name, presence: true, length: { minimum: 3  }
  validates :description, presence: true, length: { minimum: 3  }
  validates :price, presence: true, :numericality => {:greater_than_or_equal_to => 0.01}
end