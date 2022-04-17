class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable

  has_one_attached :image

  validates :image,
            content_type: %i[gif png jpg jpeg],
            size: {
              less_than_or_equal_to: 5.megabytes,
            },
            dimension: {
              width: {
                max: 2000,
              },
              height: {
                max: 2000,
              },
            }
end
