class Api::V1::UsersController < ApplicationController
  #GET /Users
  def index
    @users = User.all
    render json: @users
  end
  # POST /users
  def create
    @user = User.new(users_params)
    if @user.save
      render json: @user
    else
      render error: { error: 'Unable to create User.'}, status: 400
    end
  end
  # PUT /users/:id
  def update
    @user= User.find(params[:id])
    if @user
      @user.update(users_params)
      render json: { message: 'User successfully updated.'}, status: 200
    else
      render json: { error: 'Unable to update User.'}, status: 400
    end
  end
  # DELETE /users/:id
  def destroy
    @user= User.find(params[:id])
    if @user
      @user.destroy
      render json: { message: 'User successfully deleted'}, status: 200
    else
      render json: { error: 'Unable to delete User.' }, status: 400
    end
  end

  private
  def users_params
    params.require(:user).permit(:username, :password)
  end
end
