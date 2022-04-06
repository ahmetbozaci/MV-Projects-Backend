class User < ApplicationRecord
  has_many :projects
  validates :name, presence: true
  validates :name, uniqueness: { case_sensitive: false }
end
