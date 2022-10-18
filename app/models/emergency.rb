class Emergency < ApplicationRecord
  has_one_attached :photo
  belongs_to :user

  validates :name, presence: true
  validates :description, presence: true
end
