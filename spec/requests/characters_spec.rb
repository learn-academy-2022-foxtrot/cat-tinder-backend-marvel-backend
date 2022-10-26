require 'rails_helper'

RSpec.describe "Characters", type: :request do

  describe "GET /index" do
    it "gets a list of characters" do
      Character.create(
        name: "Black Panther",
        age: 35,
        enjoys: "biting everything",
        image: "find and add link"
      )

      get '/characters'

      character = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(character.length).to eq 1
    end
  end

  describe "POST /create" do
    it "creates a character" do
      character_params = {
        character: {
          name: 'Wonder Woman',
          age: 26,
          enjoys: 'Gyms a lot',
          image: 'find and add link'
        }
      }
  
      post '/characters', params: character_params
  
      expect(response).to have_http_status(200)
  
      character = Character.first
  
      expect(character.name).to eq 'Wonder Woman'
    end
  end

  describe "cannot create a character without valid attributes" do
    it "doesnt create a character without a name" do
      character_params = {
        character: {
          age: 99,
          enjoys: "fighting people"
          image: "link"
        }
      }

      post '/characters', params: character_params
      
      expect(response.status).to eq 422

      json = JSON.parse(response.body)

      expect(json['name']).to include "cant be blank"
    end
  end

  describe "cannot create a character without valid attributes" do
    it "doesnt create a character without a age" do
      character_params = {
        character: {
          age: 99,
          enjoys: "fighting people"
          image: "link"
        }
      }

      post '/characters', params: character_params

      expect(response.status).to eq 422

      json = JSON.parse(response.body)

      expect(json['age']).to include "cant be blank"
    end
  end

  describe "cannot create a character without valid attributes" do
    it "doesnt create a character without a enjoys" do
      character_params = {
        character: {
          age: 99,
          enjoys: "fighting people"
          image: "link"
        }
      }

      post '/characters', params: character_params

      expect(response.status).to eq 422

      json = JSON.parse(response.body)

      expect(json['enjoys']).to include "cant be blank"
    end
  end

  describe "cannot create a character without valid attributes" do
    it "doesnt create a character without a image" do
      character_params = {
        character: {
          age: 99,
          enjoys: "fighting people"
          image: "link"
        }
      }

      post '/characters', params: character_params

      expect(response.status).to eq 422

      json = JSON.parse(response.body)

      expect(json['image']).to include "cant be blank"
    end
  end

end