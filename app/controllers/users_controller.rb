class UsersController < ApplicationController

  def create
    @user = User.new(:email => params[:params][:email], :password => params[:params][:password], :password_confirmation => params[:params][:password], :firebase_uid => params[:params][:firebase_uid])
    @user.save

    sign_in @user

    @users_plans = @user.plans
    # if @users_plans.count == 0
    #   @users_plans = "You currently do not have any preferred locations. Please select \"create plan\" form the menu above."
    # end
    # render json: @users_plans
    render json: {user: @user, user_plans: @users_plans}
  end

  def show
    @user = User.find(params[:id])
    @users_plans = @user.plans
    # if @users_plans.count == 0
    #   @users_plans = "You currently do not have any preferred locations. Please select \"create plan\" form the menu above."
    # end
    render json: @users_plans
  end


  def find_by_firebase
    @user = User.find_by(firebase_uid: params[:firebase_uid])

    render json: @user
  end


end
