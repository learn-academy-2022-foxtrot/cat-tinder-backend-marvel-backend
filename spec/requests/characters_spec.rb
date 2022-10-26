require 'rails_helper'

RSpec.describe "Characters", type: :request do
  describe "GET /index" do
  it "should get the list of characters" do 
    character.create(
      name: "Black Panther",
        age: 35,
        enjoys: "biting everything",
        image: "https://media.vanityfair.com/photos/5e27310def889c00087c7928/2:3/w_887,h_1331,c_limit/taylor-swift-characters.jpg"
      )
    
      get '/characters'

    character = JSON.parse(response.body)

    expect(response.status).to eq(200)
    expect(character.length).to eq(1)
  end
end

describe "POST /create" do
  it "creates a character" do
    # symbolizes the data that would be sent from the html form to the database, stored in character_params variable
    character_params = {
      character: {
        name: "Hazel",
        age: 3,
        enjoys: "biting everything",
        image: "https://media.vanityfair.com/photos/5e27310def889c00087c7928/2:3/w_887,h_1331,c_limit/taylor-swift-characters.jpg"
      }
    }

    # send the request
    post "/characters", params: character_params

    # look up the character
    character = Character.first

    # to see the character on the terminal
    p "character on create method:", character
    
    # Assertion
    expect(character.name).to eq("Hazel")
    # make sure the the text or string place here matches the value for the data entry you created
    expect(character.enjoys).to eq("biting everything")
  end
end

describe "cannot create a character without valid attributes" do
  it "doesn't create a character without a name" do
    character_params = {
      character: {
        age: 3,
        enjoys: "biting everything",
        image: "https://media.vanityfair.com/photos/5e27310def889c00087c7928/2:3/w_887,h_1331,c_limit/taylor-swift-characters.jpg"
      }
    }
    #sends request to the server
    post '/characters', params: character_params
    #expect an error if character_params has no name  unprocessable entity
    expect(response.status).to eq 422
    # convert json response into ruby hash
    json = JSON.parse(response.body) 

    expect(json['name']).to include "can't be blank"
  end

    it "cannot create a character without an age" do
        character_params = {
          character: {
            name:"Hazel",
            enjoys: "biting everything",
            image: "https://media.vanityfair.com/photos/5e27310def889c00087c7928/2:3/w_887,h_1331,c_limit/taylor-swift-characters.jpg"
          }
        }
        post '/characters', params: character_params
        json = JSON.parse(response.body)
        expect(response).to have_http_status(422)
        expect(json['age']).to include "can't be blank"
    end
  end
end