class User < ApplicationRecord
  has_many :posts
  has_many :likes, dependent: :destroy

  belongs_to :account

  validates :sitename, presence: {message: 'は必須項目です。'}
end
