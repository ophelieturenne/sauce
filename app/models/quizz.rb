class Quizz < ApplicationRecord
  has_many :questions, dependent: :destroy
end
