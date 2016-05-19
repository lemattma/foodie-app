class User < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  has_many :recipes 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :given_name, :last_name, :birth_date, :email, presence: true
end
