class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :user_items
  has_many :items, through: :user_items
  
  validates_uniqueness_of :user_name, scope: :item_id, message: "Cannot add same item more than once." 


  def results
    results = []

    Store.all.each do |store|
      results.push(store.items_to_user_items(self.items))
    end

    results
  end

end
