class Category < ApplicationRecord
  has_many :producats
  has_many :lightitems, through: :producats
  has_many :solaritems, through: :producats
  has_many :cctvitems, through: :producats




  def to_s
    name
  end
  
end
