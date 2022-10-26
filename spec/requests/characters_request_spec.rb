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

      # Make a request
      get '/characters'

      character = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(character.length).to eq 1
    end
  end

  describe "POST /create" do
    it "creates a character" do
      # The params we are going to send with the request
      character_params = {
        character: {
          name: 'Wonder Woman',
          age: 26,
          enjoys: 'Gyms a lot',
          image: 'find and add link'
        }
      }
  
      # Send the request to the server
      post '/characters', params: character_params
  
      # Assure that we get a success back
      expect(response).to have_http_status(200)
  
      # Look up the character we expect to be created in the db
      character = Character.first
  
      # Assure that the created character has the correct attributes
      expect(character.name).to eq 'Wonder Woman'
    end
  end
end