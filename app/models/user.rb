class User < ApplicationRecord
    has_many :posts  

    # Validations
    validates :name, presence: { message: "How do you create a user without a name?" }
    validates :email, presence: { message: "How do you create a user without a email?" },
                      uniqueness: { message: "Sorry, your email is not unique." },
                      format: { with: URI::MailTo::EMAIL_REGEXP, message: "Email format is invalid" }
    validates :password, presence: { message: "Are you sure you don't want to add a password?" },
                         length: { minimum: 6, message: "Sorry password must be at least 6 characters long" }
  
    # Callback
    before_save :downcase_email
  
    private
  
    def downcase_email
      self.email = email.downcase
    end
end