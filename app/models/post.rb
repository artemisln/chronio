class Post < ApplicationRecord
  belongs_to :user
  has_rich_text :body
  has_many_attached :images
  has_many :reactions

  def feed_body
    # If there are images then only the first 100 characters show but if there are no images, first 400 ;) 
    char_limit = images.any? ? 100 : 400
    body&.body&.to_plain_text&.first(char_limit)
  end

  def feed_body_is_larger?
    start_chars = body&.body&.to_plain_text&.chars&.count || 0
    feed_chars = feed_body&.chars&.count || 0
    start_chars > feed_chars
  end

end
