class Reaction < ApplicationRecord
  belongs_to :user
  belongs_to :post

  before_save :downcase_name

  private

  def downcase_name
    self.name = name.downcase
  end
end
