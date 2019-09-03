class Meal < ApplicationRecord
    mount_uploader :image, ImageUploader
end
