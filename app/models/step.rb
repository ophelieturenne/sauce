class Step < ApplicationRecord
  belongs_to :aid
  has_one_attached :photo

  after_create do
    puts position
  end
end
