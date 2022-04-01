class StoreController < ApplicationController
  def index
    if session[:counter].nil? then session[:counter] = 0 end
    @counter = session[:counter] += 1
    @products = Product.order(:title)
  end
end
