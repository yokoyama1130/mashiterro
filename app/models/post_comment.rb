class PostComment < ApplicationRecord
  # UserモデルとPostCommentモデルを関連付ける
  belongs_to :user
  belongs_to :post_image
end
