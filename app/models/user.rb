class User < ActiveRecord::Base
      belongs_to :person
      has_secure_password
      validates :password, confirmation: true
      validates :password_confirmation, presence: true
end