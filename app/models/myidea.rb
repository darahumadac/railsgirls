class Myidea < ActiveRecord::Base
	mount_uploader :picture, PictureUploader
end
