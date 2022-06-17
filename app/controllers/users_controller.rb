class UsersController < ApplicationController
  # before_action :set_user, only: %i[ show update destroy ]
  
  # GET /me
  def show
    user = User.find_by(id: session[:user_id])
    if user
      render json: user, status: :ok
    else
      render json: { errors: ['Unauthorized'] }, status: :unauthorized
    end
  end
  
  # POST /signup
  def create
    user = User.create(user_params)    
    if user.valid?
      render json: user, status: :created
      session[:user_id] = user.id
    else
      render json: {errors: user.errors.full_messages}, status: :unprocessable_entity
    end
  end


  # GET /users
  # def index
  #   @users = User.all
  #   render json: @users
  # end

  # PATCH/PUT /users/1
  # def update
  #   if @user.update(user_params)
  #     render json: @user
  #   else
  #     render json: @user.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /users/1
  # def destroy
  #   @user.destroy
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_user
    #   @user = User.find_by(id: params[:id])
    # end

    # Only allow a list of trusted parameters through.
    def user_params
      params.permit(:username, :password, :password_confirmation, :first_name, :last_name, :role)
    end
end
