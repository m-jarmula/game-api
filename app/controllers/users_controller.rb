class UsersController < ApplicationController
  before_action :set_user, :protect_user, only: %w(show)

  def show
    render json: @user, include: :player
  end

  private

  def protect_user
    head :unauthorized if current_user != @user
  end

  def set_user
    @user = User.includes(:player).find(params[:id])
  end
end
