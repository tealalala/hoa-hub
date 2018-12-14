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

  def bylaws_to_be_voted_on
    # Users voted on items below
    already_voted_array_actions = self.action_by_address_users.where('bylaw_id IS NOT NULL')
    already_voted_array_bylaws = []
    i = 0

    already_voted_array_actions.length.times do
      already_voted_array_bylaws << already_voted_array_actions[i].bylaw
      i += 1
    end

    return Bylaw.where(status:false) - already_voted_array_bylaws

  end
end
