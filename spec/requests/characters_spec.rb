require 'rails_helper'

RSpec.describe Character, type: :model do
  it "should validate name exists in the db entry" do
    character = Character.create(age:7, enjoys: "eating pickles", image: "https://somecharacterpic.com")
    expect(character.errors[:name]).to_not be_empty
  end

  it "should validate age exists in the db entry" do
    character = Character.create(name: "Pickles", enjoys: "eating pickles", image: "https://somecharacterpic.com")
    expect(character.errors[:age]).to_not be_empty
  end

  it "should validate enjoys exists in the db entry" do
    character = Character.create(name: "Pickles", age:7, image: "https://somecharacterpic.com")
    expect(character.errors[:enjoys]).to_not be_empty
  end

  it "should validate image exists in the db entry" do
    character = Character.create(name: "Pickles", age:7, enjoys: "eating pickles")
    expect(character.errors[:image]).to_not be_empty
  end

  it "should validate enjoys is at least 10 characters minimum" do
    character = Character.create(name:"GuanChan", age:32, enjoys:"pottery and motorcycling", image:"imageOfGuan.jpg")
    expect(character.errors[:enjoys]).to_not be_empty
  end
end