class User < ActiveRecord::Base
  has_secure_password

  has_many :files, class_name: "Attachment"
end
