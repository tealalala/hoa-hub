class Ccr < ApplicationRecord
  # Database Relationships
  has_many :action_by_address_users
  # has_one :association

  # Data Validations
  validates :association_management_id, :section, :description, :presence => true
end
