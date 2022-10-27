class CharactersController < ApplicationController

  def index
    characters = Character.all
    render json: characters
  end

  def create 
    character = Character.create(character_params)
    if character.valid?
        render json: character
    else 
        render json: character.errors, status: 422
    end
  end

  def update
    character = Character.find(params[:id])
    character.update(character_params)
    if character.valid?
      render json: character
    else
      render json: character.errors, status: 422
    end
  end

  def destroy
    character = Character.find(character_params[:id])
    render json: character
  end

  private
    def character_params
    params.require(:character).permit(:name, :age, :enjoys, :image)
    end
end