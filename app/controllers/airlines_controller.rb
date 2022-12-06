class AirlinesController < ApplicationController
    def index
        render json: Airline.all
    end

    def show
        airline = Airline.find(params[:id])
        render json: airline, include: ["reviews.user"], serializer: AirlineUserSerializer
    end

end
