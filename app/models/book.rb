class Book < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :page, presence: true, numericality: true
end
