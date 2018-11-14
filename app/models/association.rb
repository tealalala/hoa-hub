class Association < ApplicationRecord
  has_and_belongs_to_many :association_roles
  # belongs_to :bylaw
  # belongs_to :ccr
end
