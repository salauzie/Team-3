class Topic < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  has_many :comments, :as => :commentable
  belongs_to :user

  has_many :users, through: :user_topics
  has_many :user_topics
end
