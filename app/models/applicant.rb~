class Applicant < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  attr_accessor :name, :email, :password, :password_confirmation, :remember_me

  has_many :job_posts, :dependent => :destroy
  has_many :job_responses, :dependent => :destroy
  
  validates :name, :presence => true, :length => { :maximum => 50 }
end
