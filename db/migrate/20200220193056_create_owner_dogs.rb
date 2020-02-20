class CreateOwnerDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :owner_dogs do |t|
      t.integer :owner_id
      t.integer :dog_id
    end 
  end
end
