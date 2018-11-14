class Group < ApplicationRecord
  has_many :roles
  belongs_to :association_roles
end
