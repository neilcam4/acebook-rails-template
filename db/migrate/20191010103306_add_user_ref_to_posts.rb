class AddUserRefToPosts < ActiveRecord::Migration[5.1]
  def change
    add_reference :posts, :user, null: false, foreign_key: true
  end
end
