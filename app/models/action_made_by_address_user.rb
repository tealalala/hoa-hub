class ActionMadeByAddressUser < ApplicationRecord
  belongs_to :property_address
  belongs_to :user
end
