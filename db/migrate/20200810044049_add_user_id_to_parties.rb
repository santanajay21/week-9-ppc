class AddUserIdToParties < ActiveRecord::Migration[5.2]
  def change
    add_reference :parties, :user, index: true
  end
end
