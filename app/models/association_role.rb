class AssociationRole < ApplicationRecord
  has_many :groups
  has_many :roles
end
