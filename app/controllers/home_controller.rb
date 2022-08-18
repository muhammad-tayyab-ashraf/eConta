class HomeController < ApplicationController
  before_action :authenticate, except: [:welcome]

  def welcome;end

  private
  def authenticate
    redirect_to new_user_session_path unless user_signed_in?
  end
end
