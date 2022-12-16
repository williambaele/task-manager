class Task < ApplicationRecord
  validates :title, length: { minimum: 5 }, presence: true
  validates :content, length: { minimum: 30 }, presence: true
end
