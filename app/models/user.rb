class User < ActiveRecord::Base
      belongs_to :person
      has_secure_password
      validates :login, uniqueness: true, 
            :presence =>  true, 
            :length => { :within => 3..15 }
      validates :password, :presence => true,
           :confirmation => true,
           :length => {:within => 6..40},
           :on => :create      
end