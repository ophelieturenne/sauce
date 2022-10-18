class Step < ApplicationRecord
  belongs_to :aid
  has_one_attached :photo
end
