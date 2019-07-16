class Recipe < ApplicationRecord
  has_one_attached :image
  has_many :ingredients, inverse_of: :recipe
  accepts_nested_attributes_for :ingredients, reject_if: :all_blank, allow_destroy: true
  has_many :directions, inverse_of: :recipe
  accepts_nested_attributes_for :directions, reject_if: :all_blank, allow_destroy: true
  validates_presence_of :image, :title, :description
end
