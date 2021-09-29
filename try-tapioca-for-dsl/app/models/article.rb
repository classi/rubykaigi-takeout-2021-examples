class Article < ApplicationRecord
  belongs_to :user
  has_many :article_tags
  has_many :tags, through: :article_tags, dependent: :destroy

  enum status: {archived: 0, wip: 1, published: 2}, _prefix: true

  validates :title, presence: true, length: { maximum: 30 }

  def can_be_published?
    !!status_wip?
  end
end
