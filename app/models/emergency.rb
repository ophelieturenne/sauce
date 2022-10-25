class Emergency < ApplicationRecord
  has_one_attached :photo
  belongs_to :user

  validates :name, presence: true
  validates :description, presence: true

  validates :phone_number, presence: true
  validates :phone_number, format: { with: /\A(\+230)?((\d{3})|(\d{8})|(\d{7}))\z/ }

  validates :ispublic, inclusion: [true, false]

end
