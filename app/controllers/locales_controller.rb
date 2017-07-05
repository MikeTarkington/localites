class LocalesController < ApplicationController

  def index
    @yelp_query = YelpAdapter.new
    @yelp_result = @yelp_query.place_search('san francisco', 'mission')
    render json: @yelp_result
  end

end
