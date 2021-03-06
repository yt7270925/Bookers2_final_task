class Book < ApplicationRecord
  # Userモデルとのアソシエーション
  belongs_to :user

  # Favoriteモデルとのアソシエーション
  has_many :favorites, dependent: :destroy

  # BookCommentモデルとのアソシエーション
  has_many :book_comments, dependent: :destroy

  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end

  validates :title, presence: true
  # 最大200文字まで
  validates :body, presence: true, length: { maximum: 200 }


  # has_one_attached :image

  # # def get_image
  #   unless image.attached?
  #     file_path = Rails.root.join('app/assets/images/no_image.jpg')
  #     image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
  #   end
  #   image
  # end

end