class PlansController < ApplicationController
  protect_from_forgery with: :null_session

  def create
    # p '*' * 80
    # p params
    # p JSON.parse(params)
    @plan = Plan.new(params[:user_id, :title, :city, :district])
    @plan.save
    render json: @plan
  end

  def show
    @plan = Plan.find_by(id: params[:id])
    render json: @plan
  end

end
