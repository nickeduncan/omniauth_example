class User < ApplicationRecord
  validates :email, presence: true

  def self.create_from_github(auth)
    User.create!(
      github_id: auth['uid'],
      # nickname: auth['info']['nickname'],
      email: auth['info']['email']
    )
  end

  def self.create_from_facebook(auth)
    User.create!(
      facebook_id: auth['uid'],
      name: auth['info']['name'],
      email: auth['info']['email'],
      user_likes: auth['info']['user_likes']
    )
  end
end
