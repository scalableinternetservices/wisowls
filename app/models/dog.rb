class Dog < ApplicationRecord
    has_one_attached :image
    radii = ['5mi','10mi', '15mi', '20mi']
end
