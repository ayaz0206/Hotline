class AddAttachmentFileAvatarToQuestions < ActiveRecord::Migration
  def self.up
    change_table :questions do |t|
      t.attachment :file_avatar
    end
  end

  def self.down
    drop_attached_file :questions, :file_avatar
  end
end
