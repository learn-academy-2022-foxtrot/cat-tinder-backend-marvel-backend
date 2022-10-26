class CharactersController < ApplicationController
    def index
        character = Charater.all
        render json: character
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
        character = Character.create(character_params)
        if character.update(character_params)
            render json: character
        else 
            render json: character.errors, status: 422
        end
    end

        def destroy
        character = Character.create(character_params)
        if character.destory(character_params)
            render json: character
        else 
            render json: character.errors, status: 422
        end
    end
    
        private
        def character_params
          params.require(:character).permit(:name, :age, :enjoys, :image)
        end

    end
end
