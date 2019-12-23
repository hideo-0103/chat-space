class Group < ApplicationRecord
  has_many :users_group
  has_many :massages
  has_many :users, through: :users_groups
end
