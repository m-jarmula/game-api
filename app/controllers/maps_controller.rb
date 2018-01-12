class MapsController < ApplicationController
  before_action :map, only: %w(show)

  def show
    render json: @state.to_json
  end

  private

  def map
    @state = Map::Factory.get(name).to_api(current_user)
  end

  def name
    params[:name].to_sym
  end
end
