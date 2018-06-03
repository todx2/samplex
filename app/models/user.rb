class User < ApplicationRecord
   #ted june 3 2018  modified ted
   #attr_accessor hides the password  May want to use it latet for secuity---proved
   #attr_accessor :password

   before_save { self.email = email.downcase }
   validates :name,  presence: true, length: { maximum: 50 }
   VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
   validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
   
   #ted june 3 2018  modified ted
   validates :password, :confirmation => true,  presence: true, length: { minimum: 6 }
end
