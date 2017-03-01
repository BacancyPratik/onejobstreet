class CreateUserExps < ActiveRecord::Migration[5.0]
  def change
    create_table :user_exps do |t|
      t.string :designation
      t.string :company
      t.string :working_since
      t.string :location
      t.string :notice
      t.string :skills

      t.timestamps
    end
  end
end
