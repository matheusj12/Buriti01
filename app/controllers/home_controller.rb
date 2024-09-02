class HomeController < ApplicationController
  def index
    @produtos = Product.all
    @produto_counts = @produtos.group(:name).count
  end
end
