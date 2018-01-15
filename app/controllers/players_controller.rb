class PlayersController < ApplicationController
  def create
    Player.create(name: params[:name], user: current_user)
    render json: current_user, include: :player
  end

  private

  def palyer_params
    params.require(:player).permit(:name)
  end
end
