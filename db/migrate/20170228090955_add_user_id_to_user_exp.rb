class AddUserIdToUserExp < ActiveRecord::Migration[5.0]
  def change
    add_column :user_exps, :user_id, :integer
  end
end
