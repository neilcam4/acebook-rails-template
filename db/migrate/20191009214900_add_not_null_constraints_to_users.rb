class AddNotNullConstraintsToUsers < ActiveRecord::Migration[5.1]
  def change
    change_column_null :users, :first_name, false
    change_column_null :users, :last_name, false
    change_column_null :users, :email, false
    change_column_null :users, :password_digest, false
  end
end
