class Post < ApplicationRecord
    belong_to :user

    has_many :post_tags
    has_many :tags, through: :post_tags

    belongs_to :parent_post, class_name: "Post", optional: true
    has_many :child_posts, class_name: "Post", foreign_key: "parent_post_id"

    validates :name, presence: true
    validates :email, presence: true, uniqueness: true, format: { with: /\A[\w+\-.]+@gmail\.com\z/i }
    validates :password, presence: true, length: { minimum: 6 }

    belongs_to :user

    validates :title, :content, :user_id, presence: true
    validates :answers_count, :likes_count, numericality: { greater_than_or_equal_to: 0 }
    validates :published_at, presence: true, on: :create
  
    before_validation :set_default_published_at, on: :create
    private

    def set_default_published_at
      self.published_at ||= Time.current
    end
end