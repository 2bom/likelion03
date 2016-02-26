class Post < ActiveRecord::Base
    mount_uploader :my_image, AvatarUploader
    has_many :replies
end
