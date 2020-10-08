class Solaritem < ApplicationRecord
  has_many :producats
  has_many :categories, through: :producats, dependent: :destroy
  has_many_attached :photos

  accepts_nested_attributes_for :producats
end
