class AssociationManagement < ApplicationRecord
  # Database Relationships
  belongs_to :bylaw, optional: true
  belongs_to :ccr, optional: true

  # Data Validations
  validates :name, :address, :city, :state, :zip_code, :presence => true
  validates :name, :address, :uniqueness => true
  validates :address, :city, :state, length: { minimum: 2 }
  # validates :zip_code, numericality => { :only_integer => true }
end
