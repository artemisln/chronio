class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts
  has_many :reactions
  has_many :comments
  has_many :jobs, dependent: :destroy

  validates :username, presence: true, uniqueness: true
end
