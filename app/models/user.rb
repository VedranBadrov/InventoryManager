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

       enum role: [:user, :moderator, :admin]
       after_initialize :set_default_role, :if => :new_record?
       def set_default_role
              self.role ||= :user
       end
end
