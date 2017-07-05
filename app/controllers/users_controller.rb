class UsersController < ApplicationController

def 
  @user = User.new(:email => 'test@example.com', :password => 'password', :password_confirmation => 'password')
  @user.save
