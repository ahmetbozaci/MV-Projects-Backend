class Project < ApplicationRecord
  belongs_to :user
  validates :repo_link, :live_link, :picture, :description, presence: true
end
