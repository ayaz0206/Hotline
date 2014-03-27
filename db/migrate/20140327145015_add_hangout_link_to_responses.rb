class AddHangoutLinkToResponses < ActiveRecord::Migration
  def change
    add_column :responses, :hangout_link, :string
  end
end
