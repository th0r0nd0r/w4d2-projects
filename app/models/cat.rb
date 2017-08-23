class Cat < ApplicationRecord
  COLORS = {
    black: "black",
    white: "white",
    orange: "orange"
  }

  validates :birthdate, :color, :name, :sex, :description, presence: true
  validates :color, inclusion: { in: COLORS.values,
    message: "%{value} is not a valid color" }
  validates :sex, inclusion: { in: %w(M F) }

  has_many :requests,
    primary_key: :id,
    foreign_key: :cat_id,
    class_name: :CatRentalRequest

end
