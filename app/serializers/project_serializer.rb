class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :repo_link, :live_link, :picture
end
