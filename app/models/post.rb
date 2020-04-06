class Post < ActiveRecord::Base
  validates :title, presence: true 
  validates :content, length: {minimum: 250} 
  validates :summary, length: {maximum: 250}
  validates :category, inclusion: { in: %w(Fiction Non-Fiction), message: "%{value} is not a valid category, please enter 'Fiction' or 'Non-Fiction'."}
  validates :title, inclusion: {in: %w(Believe Secret Top Guess)}
end
