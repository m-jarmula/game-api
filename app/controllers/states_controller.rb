class StatesController < ApplicationController
  before_action :state, only: %w(show)

  def show
    binding.pry
    render json: @state.to_json
  end

  private

  def state
    @state = State::Factory.get(name).to_api
  end

  def name
    params[:name].to_sym
  end
end
