class Like < ApplicationRecord
  belongs_to :post, counter_cache: :likes_count
  belongs_to :user
　belongs_to :account

  validates :user_id, presence: true
  validates :post_id, presence: true
  validates :account_id, presence: true
end
