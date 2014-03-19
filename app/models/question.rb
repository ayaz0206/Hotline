class Question < ActiveRecord::Base
  validates_presence_of :title, :description
  validate :file_size_validation
  has_many :responses
  belongs_to :user

  has_attached_file :file_avatar, :default_url => "/files/:style/missing.doc"
  do_not_validate_attachment_file_type :file_avatar

  private 

  def file_size_validation
    errors[:file_avatar] << "should be less than 1MB" if file_avatar.size > 1.megabytes
  end

end



