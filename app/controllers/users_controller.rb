class UsersController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :not_found_message
    def index
    render json: User.all
    end

    def destroy
        user = find_by_id
        user.destroy
        head :no_content
    end

    private 

    def find_by_id
        User.find(params[:id])
    end

    def not_found_message
        render json: {error: "User not Found"}, status: :not_found
    end
end
