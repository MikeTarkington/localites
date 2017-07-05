# require 'json'

class LocalesController < ApplicationController

  def index
    @yelp_query = YelpAdapter.new
    @yelp_query.place_search('san francisco', 'mission')
    # respond_to do |format|
    #   format.json { render json: @yelp_query }
    # end
    render json: @yelp_query
  end

end
