require 'rails_helper'

RSpec.describe "Characters", type: :request do

  describe "GET /index" do
    it "gets a list of characters" do
      Character.create(
        name: "Hazel",
        age: 3,
        enjoys: "biting everything",
        image: "https://media.vanityfair.com/photos/5e27310def889c00087c7928/2:3/w_887,h_1331,c_limit/taylor-swift-cats.jpg"
      )

      get '/characters'

      character = JSON.parse(response.body)

      expect(response.status).to eq(200)
      expect(character.length).to eq(1)
    end
  end

  describe "POST /create" do
    it "creates a character" do
      character_params = {
        character: {
          name: "Hazel",
          age: 3,
          enjoys: "biting everything",
          image: "https://media.vanityfair.com/photos/5e27310def889c00087c7928/2:3/w_887,h_1331,c_limit/taylor-swift-cats.jpg"
        }
      }

      post "/characters", params: character_params

      character = Character.first

      p "character on create method:", character
      
      expect(character.name).to eq("Hazel")
      expect(character.enjoys).to eq("biting everything")

    end
  end

  describe "cannot create a character without valid attributes" do
  it "doesn't create a character without a name" do
    character_params = {
      character: {
        age: 3,
        enjoys: "biting everything",
        image: "https://media.vanityfair.com/photos/5e27310def889c00087c7928/2:3/w_887,h_1331,c_limit/taylor-swift-cats.jpg"
      }
    }
    post '/characters', params: character_params
    expect(response.status).to eq 422
    json = JSON.parse(response.body) 

    expect(json['name']).to include "can't be blank"
  end

    it "cannot create a character without an age" do
        character_params = {
          character: {
            name:"Hazel",
            enjoys: "biting everything",
            image: "https://media.vanityfair.com/photos/5e27310def889c00087c7928/2:3/w_887,h_1331,c_limit/taylor-swift-cats.jpg"
          }
        }
        post '/characters', params: character_params
        json = JSON.parse(response.body)
        expect(response).to have_http_status(422)
        expect(json['age']).to include "can't be blank"
    end
  end
end