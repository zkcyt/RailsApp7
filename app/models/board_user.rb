class BoardUser < ApplicationRecord
  has_many :board_messages
  belongs_to :account

  validates :nickname, presence: {message: 'は必須項目です。'}
end
