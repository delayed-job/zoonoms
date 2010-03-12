class Nom < ActiveRecord::Base
  has_one :animal
  belongs_to :user
end
