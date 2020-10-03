class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  enum status: { inactive: 0, active: 1 }
end
