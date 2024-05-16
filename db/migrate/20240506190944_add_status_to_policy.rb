class AddStatusToPolicy < ActiveRecord::Migration[7.0]
  def change
    add_column :policies, :status, :integer
  end
end
