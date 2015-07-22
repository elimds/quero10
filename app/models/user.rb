class User < ActiveRecord::Base
      belongs_to :person
      has_secure_password
end