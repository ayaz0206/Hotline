class AddAttachmentFileAvatarToResponses < ActiveRecord::Migration
  def self.up
    change_table :responses do |t|
      t.attachment :file_avatar
    end
  end

  def self.down
    drop_attached_file :responses, :file_avatar
  end
end
