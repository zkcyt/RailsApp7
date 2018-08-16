class QuestionaryItem < ApplicationRecord
  belongs_to :questionary
  has_many :questionary_choices

  validates :content, presence: {message: 'は必須項目です。'}
end
