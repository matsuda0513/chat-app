class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable  
        #  validatableというdeviseのモジュールが含まれており、これによりemailの形式と一意性、パスワードの長さ（6~128文字）と形式（半角英数字）についてのバリデーションが自動的に設定されます
  
  has_many :room_users
  has_many :rooms, through: :room_users
  has_many :messages

  validates :name, presence: true
end
