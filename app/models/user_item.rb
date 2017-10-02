class UserItem < ApplicationRecord
  belongs_to :user
  belongs_to :item

  validates :user_id, uniqueness: { scope: :item_id,
    message: "Be not able to add same item more than once." }
end
