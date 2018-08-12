class Question < ApplicationRecord
  has_many :answers

  validates :content, :name, presence: {message: 'は必須項目です。'}
end
