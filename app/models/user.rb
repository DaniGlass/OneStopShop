class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :user_items
  has_many :items, through: :user_items
  
  validates_uniqueness_of :user_name, scope: :item_id, message: "Cannot add same item more than once." 
end

# for new push you can delete this later