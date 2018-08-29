class User < ApplicationRecord
  has_many :posts
  belongs_to :account

  validates :sitename, presence: {message: 'は必須項目です。'}
end
