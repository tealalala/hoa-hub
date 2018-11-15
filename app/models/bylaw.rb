class Bylaw < ApplicationRecord
  has_many :action_made_by_address_users
  has_one :association_management
end
