# spec/models/character_spec.rb
require 'rails_helper'

RSpec.describe Character, type: :model do
  it"should validate name to not be empty" do
    character = Character.create(age: 1, enjoys: "Sour Cream", image: "https://somecatpic.com")
    expect(character.errors[:name]).to_not be_empty
  end

  it"should validate age to not be empty" do
    character = Character.create(name: "Super John", enjoys: "Sour Cream", image: "https://somecatpic.com")
    expect(character.errors[:age]).to_not be_empty
  end

  it"should validate enjoys to not be empty" do
    character = Character.create(name: "Kyle", age: 1, image: "https://somecatpic.com")
    expect(character.errors[:enjoys]).to_not be_empty
  end

  it"should validate image to not be empty" do
    character = Character.create(name: "Tawn", age: 1, enjoys: "Sour Cream")
    expect(character.errors[:image]).to_not be_empty
  end

  it"should validate enjoys to be 10 characters minimum." do
    character = Character.create(name: "Tawn", age: 1, enjoys: "candy")
    expect(character.errors[:enjoys]).to_not be_empty
  end

end

