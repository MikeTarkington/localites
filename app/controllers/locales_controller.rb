class LocalesController < ApplicationController

  def index
    @yelp_query = YelpAdapter.new
    @yelp_result = @yelp_query.place_search(params[:city], params[:neighborhood], params[:offset])
    render json: @yelp_result
  end

  def create
    @locale = Locale.new
    @locale.name = params[:params][:card][:name]
    @locale.image_url = params[:params][:card][:image_url]
    @locale.yelp_url = params[:params][:card][:url]
    @locale.address = params[:params][:card][:location][:address1]
    @locale.plan_id = params[:params][:plan_id]
    @locale.save
  end

end
