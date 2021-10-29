class Movie < ApplicationRecord
  attachment :image
  belongs_to :customer
end
