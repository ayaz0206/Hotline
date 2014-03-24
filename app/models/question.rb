class Question < ActiveRecord::Base
  validates_presence_of :title, :description
  
  validate :file_size_validation

  has_many :responses
  belongs_to :user
  acts_as_taggable_on :tags

  has_attached_file :file_avatar, :default_url => "/files/:style/missing.doc"
  validates_attachment_content_type :file_avatar, :content_type => ['application/zip', /application/, /text/]
  
  private 
  def file_size_validation
    return if file_avatar.blank?
    errors[:file_avatar] << "should be less than 1MB" if file_avatar.size > 1.megabytes
  end



end



