class UsersController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :not_found_message
rescue_from ActiveRecord::RecordInvalid, with: :invalid_message
    def index
    render json: User.all
    end

    def create
        user = User.create!(permitted_params)
        session[:user_id] = user.id
        render json: user, serializer: UserCreateMethodSerializer, status: :created
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

    def permitted_params
        params.permit(:fullname, :email, :password, :confirm_password)
    end

    def not_found_message
        render json: {error: "User not Found"}, status: :not_found
    end

    def invalid_message(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
end
