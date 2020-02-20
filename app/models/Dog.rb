class Dog < ActiveRecord::Base
    has_many :owner_dogs
    has_many :owners, through: :owner_dogs
end 