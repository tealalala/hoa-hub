class Bylaw < ApplicationRecord
  # Database Relationships
  has_many :action_made_by_address_users
  has_many :users, through: :action_by_address_users
  has_one :association_management

  # Data Validations
  validates :association_management_id, :section, :description, :date_proposed, :presence => true
end
