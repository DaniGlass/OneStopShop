class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :user_items
  has_many :items, through: :user_items


  def results
    results = []

    Store.all.each do |store|
      results.push(store.items_to_user_items(self.items))
    end

    results
  end

end
