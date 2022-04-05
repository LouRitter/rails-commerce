require 'test_helper'

class CartTest < ActiveSupport::TestCase
  test "Cart should have appropriate quantities" do
   
    3.times do 
      carts(:two).add_product(products(:ruby))
      carts(:two).save!
    end

    assert_equal carts(:two).line_items.count, 2
    p carts(:two).line_items.to_a
  end
end
