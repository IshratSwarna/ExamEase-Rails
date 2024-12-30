class Post < ApplicationRecord
  validates :title, :post_type, presence: true

  enum post_type: {blog: 0, notice: 1} 
end
