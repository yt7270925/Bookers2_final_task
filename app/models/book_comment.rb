class BookComment < ApplicationRecord
  # Userモデルとのアソシエーション
  belongs_to :user

  # Bookモデルとのアソシエーション
  belongs_to :book

end
