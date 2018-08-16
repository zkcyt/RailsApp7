class Questionary < ApplicationRecord
  has_many :questionary_items
  has_many :questionary_results

  validates :title, :description, :deadline, presence: {message: 'は必須項目です。'}
end
