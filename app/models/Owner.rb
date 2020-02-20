class Owner < ActiveRecord::Base
    has_many :owner_dogs
    has_many :dogs, through: :owner_dogs
end 