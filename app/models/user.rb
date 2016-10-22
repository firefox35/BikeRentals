class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,:timeoutable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_one :profile

end
