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
        @character = Character.find(params[:id])
        @character.update(
            :name params[:name],
            :age params[:age],
            :enjoys params[:enjoys],
            :image params[:image],
        )
        render json: character
    end

    def destroy
    
    end

    private
  def character_params
    params.require(:character).permit(:name, :age, :enjoys, :image)
  end
end
