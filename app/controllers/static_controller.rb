class StaticPagesController < ApplicationController
  skip_before_action :user_is_authenticated, only: [:home]

  def home
  end
end
