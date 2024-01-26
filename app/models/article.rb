class Article < ApplicationRecord
  include Visible

  has_rich_text :content
  has_many :comments

  validates :title, presence: true
end
