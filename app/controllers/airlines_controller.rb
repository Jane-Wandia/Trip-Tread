class AirlinesController < ApplicationController

    skip_before_action :authorize
    def index
        render json: Airline.all
    end

    def show
        airline = Airline.find(params[:id])
        render json: airline, include: ["reviews.user"], serializer: AirlineUserSerializer
    end

end
