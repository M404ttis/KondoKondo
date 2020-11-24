class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :kondos, dependent: :destroy
  has_many :favorites, dependent: :destroy

  validates :username, presence: false, uniqueness: true
  validates :first_name, presence: false
  validates :last_name, presence: false
end
