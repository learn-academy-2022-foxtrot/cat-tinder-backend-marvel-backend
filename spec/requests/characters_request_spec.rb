# require 'rails_helper'

# RSpec.describe "Characters", type: :request do
#   describe "GET /index" do

# it "doesnt create a character without a name" do
#   character_params = {
#     character: {
#       age: 35,
#       enjoys: 'Flying',
#       image: 'link'
#     }
#   }

#   post '/character', params: character_params
#   expect(response.status).to eq 422
#   json = JSON.parse(response.body)
#   expect(json['name']).to include "can't be blank"
#   end
# end

# it "cannot create a character without an age" do
#   character_params = {
#     character: {
#       name:"Hazel",
#       enjoys: "biting everything",
#       image: "link"
#     }
#   }
#   post '/characters', params: character_params
#   json = JSON.parse(response.body)
#   expect(response).to have_http_status(422)
#   expect(json['age']).to include "can't be blank"
#   end
# end

