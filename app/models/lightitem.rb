class Lightitem < ApplicationRecord
  has_many :producats
  has_many :categories, through: :producats, dependent: :destroy
  has_many_attached :photos

  accepts_nested_attributes_for :producats


    scope :activo, -> { where("status == active") }
 

end
