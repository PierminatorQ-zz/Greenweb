class Producat < ApplicationRecord
  belongs_to :lightitem, optional: true
  belongs_to :solaritem, optional: true
  belongs_to :cctvitem, optional: true
  belongs_to :category


end
