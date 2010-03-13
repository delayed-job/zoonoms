class Nom < ActiveRecord::Base
  has_one :animal
  belongs_to :user

  def animal
    Animal.find(animal_id)
  end
end
