class Task < ApplicationRecord
  serialize :todo, Array
  validates :title, length: { minimum: 2 }, presence: true
  validates :content, length: { minimum: 30 }, presence: true
  attribute :status, :string, default: "process"

  include PgSearch::Model
  pg_search_scope :search_by_title_content,
  against: [ :title, :content ],
  using: {
    tsearch: { prefix: true }
  }

end
