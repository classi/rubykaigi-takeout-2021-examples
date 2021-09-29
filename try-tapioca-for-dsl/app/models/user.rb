class User < ApplicationRecord
  has_many :articles

  enum role: {subscriber: 1, author: 2, editor: 3}

  validates :name, presence: true
end
