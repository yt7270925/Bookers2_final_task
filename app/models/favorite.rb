class Favorite < ApplicationRecord

  # Userモデルとのアソシエーション
  belongs_to :user

  # Bookモデルとのアソシエーション
  belongs_to :book

  # 1user 1favorite
  validates_uniqueness_of :book_id, scope: :user_id

end
