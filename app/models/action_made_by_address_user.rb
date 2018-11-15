class ActionMadeByAddressUser < ApplicationRecord
  # Database Relationships
  belongs_to :bylaw, optional: true
  belongs_to :ccr, optional: true
  belongs_to :property_address
  belongs_to :user

  # Data Validations
  validates :property_address_id, :user_id, :presence => true

end
