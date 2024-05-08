class AddChargeToPolicy < ActiveRecord::Migration[7.0]
  def change
    add_reference :policies, :charge, foreign_key: true
  end
end
