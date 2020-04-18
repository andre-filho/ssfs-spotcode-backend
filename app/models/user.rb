class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable

  devise :database_authenticatable,
        :jwt_authenticatable,
        jwt_revocation_strategy: JwtBlacklist

  has_many :favorites
  has_many :recently_heards
  
  validates :name, presence: true
end
