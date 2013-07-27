class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessible :first_name, :last_name, :email, :profile_name, :password, :password_confirmation, :remember_me

  has_many :statuses

  def full_name
  	first_name + " " + last_name
  end
end
