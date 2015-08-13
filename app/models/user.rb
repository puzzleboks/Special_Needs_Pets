class User < ActiveRecord::Base
  # mms: I see (in your other models) that you are utilizing `dependent: :destroy`, should something be destroyed when a user is deleted.
  has_many :pets
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
