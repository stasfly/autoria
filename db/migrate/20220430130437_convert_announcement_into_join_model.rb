class ConvertAnnouncementIntoJoinModel < ActiveRecord::Migration[6.1]
  def up
    drop_table(:announcements)
  end

  
end
