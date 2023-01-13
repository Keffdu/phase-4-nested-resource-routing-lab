class UsersController < ApplicationController

  def show
    user = User.find_by(id: params[:id])
      render json: user, include: :items
  end


  # private

  # def user_not_found
  #   render json: { error: "User not found" }, status: :not_found
  # end

end
