class PlansController < ApplicationController
#  protect_from_forgery with: :null_session

  def create

    @plan = Plan.new
    @plan.user_id = params[:params][:user_id]
    @plan.title = params[:params][:title]
    @plan.city = params[:params][:city]
    @plan.district = params[:params][:district]
    @plan.save
    render json: @plan
  end

  def show
    @plan = Plan.find_by(id: params[:id])
    @plan_locales = @plan.locales
    render json: { locales: @plan_locales, plan: @plan }
  end

end
