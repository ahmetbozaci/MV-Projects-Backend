class User < ApplicationRecord
  validates: name, presence :true
  validates: name, uniquness: { case_sensitive: false }
end
