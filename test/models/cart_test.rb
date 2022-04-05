require 'test_helper'

class CartTest < ActiveSupport::TestCase
  test "Cart should have appropriate quantities" do
   
    #should only add one line item
    2.times do 
      carts(:two).add_product(products(:ruby))
      carts(:two).save!
    end
    carts(:two).add_product(products(:one))
    carts(:two).save!

    assert_equal 3, carts(:two).line_items.count
  end
end
