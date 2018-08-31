class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy

 # ポストをいいねする
  def like(user)
    likes.create(user_id: user.id)
  end

  # ポストのいいねを解除する
  def unlike(user)
    likes.find_by(user_id: user.id).destroy
  end

  validates :title, :content, presence: {message: 'は必須項目です。'}
end
