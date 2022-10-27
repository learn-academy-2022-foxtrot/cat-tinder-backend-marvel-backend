# spec/requests/characters_request_spec.rb
require 'rails_helper'

RSpec.describe "Characters", type: :request do

  describe "GET /index" do
    it"gets a list of characters" do
      Character.create(
        name: "Black Panther",
        age: 35,
        enjoys: "biting everything",
        image: "https://media.vanityfair.com/photos/5e27310def889c00087c7928/2:3/w_887,h_1331,c_limit/taylor-swift-cats.jpg"
      )

      # Make a request
      get '/characters'

      character = JSON.parse(response.body)
      expect(response.status).to eq(200)
      expect(character.length).to eq(1)
    end
  end

  describe "POST /create" do
    it "creates a new character" do
      character_params = {
        character: {
          name: "John",
          age: 13,
          enjoys: "everything there is in the ground",
          image: "http://something.com/image.jpg",
        }
      }
      post "/characters", params: character_params
      character = Character.first
      p "character on create method:", character
      expect(character.name).to eq("John")
      expect(character.age).to eq(13)
      expect(character.enjoys).to eq("everything there is in the ground")
      expect(character.image).to eq("http://something.com/image.jpg")

    end
  end

end
 