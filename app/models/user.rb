class User < ActiveRecord::Base
  has_secure_password
  has_attached_file :avatar

  has_many :posts

  # validates :email, presence: true, uniqueness: true
  # validates :password, presence: true

  validates_uniqueness_of :email
  validates_presence_of :email
end
