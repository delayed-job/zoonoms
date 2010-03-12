class Nom < ActiveRecord::Base
  has_one :animal
  belongs_to :user

  def animal
    Animal.find(animal_id).name
  end

  def user
    User.find(user_id).email
  end
end
