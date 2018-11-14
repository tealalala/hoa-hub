class ActionMadeByAddressUser < ApplicationRecord
  belongs_to :bylaw
  belongs_to :ccr
  belongs_to :property_address
  belongs_to :user
end
