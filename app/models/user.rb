class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable

  validates :email, uniqueness: true
  has_many :ordered_items
  has_one :waiting_customer
  has_one :customer
end
