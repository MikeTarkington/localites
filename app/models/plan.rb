class Plan < ApplicationRecord
  belongs_to :user
  has_many :locales

  validates :title, :city, :district, :user_id, presence: true
end
