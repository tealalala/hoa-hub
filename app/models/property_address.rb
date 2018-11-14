class PropertyAddress < ApplicationRecord
  has_many :action_made_by_address_users
  belongs_to :user
end
