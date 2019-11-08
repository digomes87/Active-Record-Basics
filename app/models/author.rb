class Author < ApplicationRecord
  validates :username, length: { minimum: 4, maximum: 12 }
  validates :email, uniqueness: true
  validates :password, presence: true, length: {minimum:6, maximum: 16}
end
