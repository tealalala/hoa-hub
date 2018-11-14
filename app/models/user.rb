class User < ApplicationRecord
  has_many :action_made_by_address_users
  has_one :property_addresses
end
