class ResetStockJob < ApplicationJob
  queue_as :default

  def perform
    Restaurant.all.each do |restaurant|
      restaurant.update(stock: 0)
    end
  end
end
