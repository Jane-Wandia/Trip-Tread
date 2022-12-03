class AirlinesController < ApplicationController
    def index
        render json: Airline.all
    end
end
