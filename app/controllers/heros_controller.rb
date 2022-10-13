class HerosController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def index
    heroes = Hero.all
    render json: heroes, status: :ok
  end

  def create
    hero = Hero.create!(hero_params)
    render json: hero, status: :created
  end

  def show
    hero = find_hero
    render json: hero, status: :ok, serializer: HeroPowerSerializer
  end

  private

  def hero_params
    params.permit(:name, :super_name)
  end

  def find_hero
    Hero.find(params[:id])
  end

  def render_not_found_response
    render json: { error: "Hero not found"}, status: :not_found
  end

end
