class Post < ApplicationRecord
    belongs_to :user

    has_many :post_tags
    has_many :tags, through: :post_tags

    belongs_to :parent_post, class_name: "Post", optional: true
    has_many :child_posts, class_name: "Post", foreign_key: "parent_post_id"
    belongs_to :user


    validates :title, presence: { message: "How do you create a post without a title" }
    validates :content, presence: { message: "Are you sure you want a post without content?" }
    validates :user_id, presence: { message: "And who uploaded the pots?, add an id" }
    validates :answers_count, numericality: { greater_than_or_equal_to: 0, message: "Surely 0 answers, it must be greater than 0" }
    validates :likes_count, numericality: { greater_than_or_equal_to: 0, message: "Surely 0 likes_count, it must be greater than 0" }
    validates :published_at, presence: { message: "this can't be empty" }, on: :create
  
    # Callback
    before_validation :set_default_published_at, on: :create
  
    private
    def set_default_published_at
      self.published_at ||= Time.current
    end
  end