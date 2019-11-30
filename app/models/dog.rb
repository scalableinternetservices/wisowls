class Dog < ApplicationRecord
    radii = ['5mi','10mi', '15mi', '20mi']
    has_many_attached :dog_images
end
