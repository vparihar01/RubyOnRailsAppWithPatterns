class Video < ActiveRecord::Base
  attr_accessible :name,:description,:path,:category_id
  belongs_to :category
  mount_uploader :path , VideoUploaderUploader

end
