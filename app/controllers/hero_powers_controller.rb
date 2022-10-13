class HeroPowersController < ApplicationController

  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

  def index
      render json: HeroPower.all, status: :ok
  end

  def create
    hero_power = HeroPower.create!(hero_power_params)
    hero = Hero.find(hero_power.hero_id)
    render json: hero, serializer: HeroPowerSerializer, status: :created
  end

  private

  def hero_power_params
      params.permit(:strength, :power_id, :heroe_id)
  end

  def render_not_found_response
      render json: {error: "Power not found"}, status: :not_found
  end

  def render_unprocessable_entity_response(exception)
      render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
  end
end
