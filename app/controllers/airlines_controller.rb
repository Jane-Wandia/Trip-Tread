class AirlinesController < ApplicationController
    def index
        render json: Airline.all
    end

    def show
        airline = Airline.find(params[:id])
        render json: airline
    end

end
