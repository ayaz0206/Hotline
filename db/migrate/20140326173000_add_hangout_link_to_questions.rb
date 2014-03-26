class AddHangoutLinkToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :hangout_link, :string
  end
end
