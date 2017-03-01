class AddMonthsToUserExp < ActiveRecord::Migration[5.0]
  def change
    add_column :user_exps, :months, :string
  end
end
