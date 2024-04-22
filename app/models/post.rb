class Post < ApplicationRecord
    belong_to :user

    has_many :post_tags
    has_many :tags, through: :post_tags

    belongs_to :parent_post, class_name: "Post", optional: true
    has_many :child_posts, class_name: "Post", foreign_key: "parent_post_id"

    validates :name, presence: true
    validates :email, presence: true, uniqueness: true, format: { with: /\A[\w+\-.]+@gmail\.com\z/i }
    validates :password, presence: true, length: { minimum: 6 }
end