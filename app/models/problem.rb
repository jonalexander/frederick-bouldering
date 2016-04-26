class Problem < ActiveRecord::Base
	has_many :comments, dependent: :destroy
  validates :problem_name, presence: true,
                           length: { minimum: 2 }
end


### Notes
# These two declarations enable a good bit of automatic behavior. For example, if you have an instance variable @article containing an article, you can retrieve all the comments belonging to that article as an array using @article.comments.
