class Api::PokemonController < ApplicationController

  before_action :set_pokemon, only: [:show]
  def index
    @pokemon = Pokemon.all
    render :index
  end

  def show
    render :show

  end

  def create
    @pokemon = Pokemon.new(pokemon_params)
  end

  private

  def set_pokemon
    @pokemon = Pokemon.find(params[:id])
  end

  # def pokemon_params
  #   params.require(:pokemon)
  # end

end
