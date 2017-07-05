class LocalesController < ApplicationController

  def index
    p "*" * 80
    p params
    p params[:city]
    p params[:neighborhood]
    @yelp_query = YelpAdapter.new
    @yelp_result = @yelp_query.place_search(params[:city], params[:neighborhood])
    render json: @yelp_result
  end

end
