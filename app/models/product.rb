class Product < ActiveRecord::Base
  validates :name, :presence => true
  validates :origin, :presence => true
  validates :cost, :presence => true

  monetize :cost
end
