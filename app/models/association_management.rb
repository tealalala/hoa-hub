class AssociationManagement < ApplicationRecord
  # Database Relationships
  belongs_to :bylaw
  belongs_to :ccr

  # Data Validations
  validates :name, :address, :city, :state, :zip_code, :presence => true, :uniqueness => true
  validates :address, :city, :state, length: { minimum: 2 }
  validates :zip_code, numericality => { :only_integer => true }
end
