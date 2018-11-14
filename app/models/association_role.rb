class AssociationRole < ApplicationRecord
  # has_and_belongs_to_many :associations
  has_many :groups
  has_many :roles
  belongs_to :user
end
