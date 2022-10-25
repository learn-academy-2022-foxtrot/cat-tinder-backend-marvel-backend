require 'rails_helper'
require 'rspec'
require_relative 'rspec'

RSpec.describe "Characters", type: :request do
  describe "GET /index" do
  it "should get the list of characters" do 
    get 'characters'

    character = JSON.parse(response.body)
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
