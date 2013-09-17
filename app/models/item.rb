class Item < ActiveRecord::Base
  attr_accessible :category_id, :placement, :price, :title, :visible
end
