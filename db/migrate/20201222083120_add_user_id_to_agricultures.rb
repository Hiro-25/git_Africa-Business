class AddUserIdToAgricultures < ActiveRecord::Migration[5.2]
  def change
    add_column :agricultures, :user_id, :integer
  end
end
