class AdminController < ApplicationController
  def index
  	@gifts = Gift.order_by_name
  	@users = User.order_by_email
  	@occasions = Occasion.order_by_date
  	authorize! :edit, @gifts
  end
end
