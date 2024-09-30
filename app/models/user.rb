# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :identities, dependent: :destroy

  def self.find_or_create_by_auth(auth)
    identity = Identity.find_by(provider: auth['provider'], uid: auth['uid'])
    identity&.user || create_with_omniauth(auth)
  end

  def self.create_with_omniauth(auth)
    create! do |user|
      identity = Identity.build(provider: auth['provider'], uid: auth['uid'])
      user.identities << identity
      user.email = auth['info']['email']
      user.password = Devise.friendly_token[0, 20]
    end
  end
end
