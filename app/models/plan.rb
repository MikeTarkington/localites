class Plan < ApplicationRecord
  belongs_to :user
  has_many :locales
end
