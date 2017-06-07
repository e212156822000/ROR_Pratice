class User < ApplicationRecord
	mount_uploader :avatar, AvatarUploader
	crop_uploaded :avatar  ## Add this
	serialize :avatars, JSON # If you use SQLite, add this line.
	searchkick # add to the models you want to search
end
