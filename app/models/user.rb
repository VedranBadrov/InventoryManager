class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  
  validates :email, length: { maximum: 255 },
            :presence => { :message  => "Can't be empty" },
            :format => { with: VALID_EMAIL_REGEX, :message => "Invalid format"},
            uniqueness: { case_sensitive: false }
end
