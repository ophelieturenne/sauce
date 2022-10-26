class Aid < ApplicationRecord
  has_one_attached :photo
  has_many :steps

  after_create do
    puts name
  end
end
