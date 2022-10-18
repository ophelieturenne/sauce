class Aid < ApplicationRecord
  has_one_attached :photo
  has_many :steps
end
