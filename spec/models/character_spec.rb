require 'rails_helper'

RSpec.describe Character, type: :model do
  it "should validate name exists in the db entry" do
    character = Character.create   
    expect(character.errors[:name]).to_not be_empty
  end

  it "should validate age exists in the db entry" do
    character = Character.create 
    expect(character.errors[:age]).to_not be_empty
  end

  it "should validate enjoys exists in the db entry" do
    character = Character.create 
    expect(character.errors[:enjoys]).to_not be_empty
  end
end

