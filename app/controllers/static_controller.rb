class StaticController < ApplicationController
  def home
    if params[:category] == nil
      @products = Product.all
    else
      @products = Product.where(category: params[:category].titleize)
    end
    #alphabetical
    @my_categoryes = Product.select(:category).order(:category).distinct
  end
end
