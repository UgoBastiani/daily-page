class User < ApplicationRecord
  has_many :favorites
  has_many :suggestions
  has_many :books, through: :favorites
  has_one_attached :photo
  # has_one_attached :photo
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
end
