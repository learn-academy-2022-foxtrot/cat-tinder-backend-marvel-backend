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
