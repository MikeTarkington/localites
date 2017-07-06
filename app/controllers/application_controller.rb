class ApplicationController < ActionController::Base
  # the rails default forgery protection:
  # protect_from_forgery with: :exception


#https://stackoverflow.com/questions/35181340/rails-cant-verify-csrf-token-authenticity-when-making-a-post-request
  # possible solutions from stackoverflow but they didn't work:
  # protect_from_forgery with: :null_session
  # skip_before_action :verify_authenticity_token

# https://github.com/plataformatec/devise/issues/4085
  # protect_from_forgery prepend: true
end
