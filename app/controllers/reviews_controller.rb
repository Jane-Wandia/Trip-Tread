class ReviewsController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :invalid_message 
rescue_from ActiveRecord::RecordNotFound, with: :not_found_message
before_action :authorize
    def index
    render json: Review.all
    end

    def create
        review = Review.create!(permitted_params)
        render json: review, status: :created
    end

    def update
        review = find_by_id
        review.update!(update_params)
        render json: review
    end

    def destroy
        review = find_by_id
        review.destroy
        head :no_content
    end

    private

    def permitted_params
        params.permit(:trip, :review, :rating, :airline_id, :user_id)
    end

    def invalid_message(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

    def find_by_id
        Review.find(params[:id])
    end

    def update_params
        params.permit(:review)
    end

    def not_found_message
        render json: {error: "Review not found"}, status: :not_found
    end

    def authorize
        render json: {error: "Not authorized"}, status: :unauthorized unless session.include? :user_id
    end
end
