class User < ApplicationRecord
  has_many :saved_articles
  has_secure_password

end
