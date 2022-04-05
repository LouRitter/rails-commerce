class AddPriceToExistingLineItems < ActiveRecord::Migration[6.0]
  def up
    LineItem.all.each do |item|
      item.price = Product.find(item.product_id).price unless item.price
      item.save!
    end
  end

  def down 
    LineItem.all.each do |item|
      item.price = nil
      item.save!
    end
  end
end
