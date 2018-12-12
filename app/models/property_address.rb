class PropertyAddress < ApplicationRecord
  # Database Relationships
  has_many :action_by_address_users
  belongs_to :user

  # Data Validations
  validates :association_management_id, :address, :city, :state, :zip_code, :presence => true, :uniqueness => true
  validates :address, :city, :state, length: { minimum: 2 }
  # validates :zip_code, numericality => { :only_integer => true }
end
