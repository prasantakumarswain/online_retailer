class ReviewsController < ApplicationController
   def create
   Review.create(customer_name: params[:customer_name] , content: params[:content] , product_id: params[:product_id] );
   redirect_to product_path(params[:product_id])
  end

end
