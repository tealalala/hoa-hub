class User < ApplicationRecord
  # Authentication
  has_secure_password
  validates :email, presence: true, uniqueness: true

  # Database Relationships
  has_many :action_by_address_users
  has_many :association_roles
  has_many :users, through: :action_by_address_users
  has_one :property_addresses

  # Data Validations
  # validates :first_name, :last_name, :email, :status, :presence => true
  # validates :first_name, :last_name, length: { minimum: 2 }
end
