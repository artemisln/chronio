class Post < ApplicationRecord
  belongs_to :user
  has_rich_text :body
  has_many_attached :images
  has_many :reactions, dependent: :destroy
  has_many :comments, dependent: :destroy

  def feed_body
    char_limit = images.any? ? 100 : 400
    body&.body&.to_plain_text&.first(char_limit)
  end

  def feed_body_is_larger?
    start_chars = body&.body&.to_plain_text&.chars&.count || 0
    feed_chars = feed_body&.chars&.count || 0
    start_chars > feed_chars
  end
end
