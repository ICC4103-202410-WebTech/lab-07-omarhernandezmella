class Tag < ApplicationRecord
    has_many :post_tags
    has_many :posts, through: :post_tags

    validates :title, presence: { message: "How do you create a user without a name" },
    uniqueness: { message:  "Sorry try another title" }
end