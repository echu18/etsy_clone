# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  username        :string
#  email           :string
#  password_digest :string
#  session_token   :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  store_name      :string
#
class User < ApplicationRecord
    # validates :username
    validates :email, presence: true, uniqueness: {message: 'has already been registered'}
    validates :password, length: {minimum: 6, allow_nil: true}

    has_many :reviews, foreign_key: :author_id, class_name: :Review
    has_many :products, foreign_key: :seller_id, class_name: :Product
    has_many :cart_items, foreign_key: :user_id, class_name: :CartItem

    
    has_many_attached :photos


    after_initialize :ensure_session_token
    attr_reader :password, :store_name 

    def self.find_by_credentials(email, password)
        user = User.find_by(email: email)
        return nil if user.nil?

        user && user.is_password?(password) ? user : nil
    end

    def self.find_by_email(email)
        user_email = User.find_by(email: email)
        user_email
    end

    def password=(password)
        @password = password 
        self.password_digest = BCrypt::Password.create(password)
    end

    def is_password?(password)
        BCrypt::Password.new(self.password_digest).is_password?(password)
    end

    def reset_session_token!
        self.session_token = SecureRandom.urlsafe_base64(16)
        self.save!
        self.session_token
    end

    def ensure_session_token
        self.session_token ||= SecureRandom.urlsafe_base64(16)
    end
end
