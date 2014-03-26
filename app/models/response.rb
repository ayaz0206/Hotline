class Response < ActiveRecord::Base
  validates_presence_of :response
  belongs_to :question
  belongs_to :user

  has_attached_file :file_avatar, :default_url => "/files/:style/missing.doc"
  validates_attachment_content_type :file_avatar, :content_type => ['application/zip', /application/, /text/]

end
