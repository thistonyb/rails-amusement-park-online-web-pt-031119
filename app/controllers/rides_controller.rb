require 'pry'
class RidesController < ApplicationController
    def create
        @ride = Ride.create(user_id: current_user.id, attraction_id: params[:attraction_id])
        @message = @ride.take_ride
        redirect_to user_path(@ride.user, :message => @message)
    end
end
