class Problem < ActiveRecord::Base
	has_many :comments, dependent: :destroy
  validates :problem_name, presence: true,
                           length: { minimum: 2 }

  # adding hash bracket behind width will determine an exact size ie: 100x100{} will crop to a square
	has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end


### Notes
# These two declarations enable a good bit of automatic behavior. For example, if you have an instance variable @article containing an article, you can retrieve all the comments belonging to that article as an array using @article.comments.
