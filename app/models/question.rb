class Question < ActiveRecord::Base
  validates_presence_of :title, :description
  has_many :responses
  belongs_to :user
end



