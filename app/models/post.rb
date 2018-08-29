class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy

  def like_user(user_id)
    likes.find_by(user_id: user_id)
  end

  validates :title, :content, presence: {message: 'は必須項目です。'}
end
