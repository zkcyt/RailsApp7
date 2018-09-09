class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  #has_many :like_users, through: :likes, source: :user

 # ポストをいいねする
 def like_user(user_id)
   likes.find_by(user_id: user_id)
 end


 #def like_user(user_id)
   #likes.find_by(user_id: user_id)
 #end

 # def like(user)
    # likes.create(user_id: user.id)
  # end

  # ポストのいいねを解除する
  # def unlike(user)
    # likes.find_by(user_id: user.id).destroy
  # end

  validates :title, :content, presence: {message: 'は必須項目です。'}
end
