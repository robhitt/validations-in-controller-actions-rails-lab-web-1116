class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :category, inclusion: { in: ["Fiction", "Non-Fiction"], message: "Must choose Fiction or Non-Fiction, %{value} is not a valid category" }
  validates :content, length: { minimum: 100 }
end
