class Locale < ApplicationRecord
  belongs_to :plan

  validates :name, :image_url, :yelp_url, :plan_id, presence: true
end
