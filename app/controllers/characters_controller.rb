class CharactersController < ApplicationController

    def index
        characters = Character.all
        render json: characters
    end
    
    def create 
        character = Character.create(character_params)
        render json: character
    end

    def update
        character = Character.update(character_params[:id])
        character.update(character_params)
        render json: character
    end

    def destroy
        character = Character.destroy(character[:id])
        character.destroy(character_params)
        render json: character
    end

    private
  def character_params
    params.require(:character).permit(:name, :age, :enjoys, :image)
  end
end
