class Character < ApplicationRecord
    validates  :name, :age, :enjoys, :image, presence: true
end
