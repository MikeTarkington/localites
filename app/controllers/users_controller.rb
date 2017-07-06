class UsersController < ApplicationController

  def create
    @user = User.new(:email => params[:email], :password => params[:password], :password_confirmation => params[:password])
    @user.save

    sign_in @user

    @users_plans = @user.plans
    # if @users_plans.count == 0
    #   @users_plans = "You currently do not have any preferred locations. Please select \"create plan\" form the menu above."
    # end
    render json: @users_plans
  end

  def show
    @user = User.find_by(id: params[:user_id])
    @users_plans = @user.plans
    # if @users_plans.count == 0
    #   @users_plans = "You currently do not have any preferred locations. Please select \"create plan\" form the menu above."
    # end
    render json: @users_plans
  end

end
