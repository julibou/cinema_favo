class Movie < ApplicationRecord
  attachment :image
  belongs_to :customer
  
   has_many :bookmarks, dependent: :destroy

  def bookmarked_by?(customer)
    bookmarks.where(customer_id: customer).exists?
  end
end
