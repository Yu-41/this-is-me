class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # belongs_to :profile
  validates :name, presence: true, uniqueness: true
  validates :image, presence: true

  mount_uploader :image, ImageUploader
end
