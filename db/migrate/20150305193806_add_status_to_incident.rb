class AddStatusToIncident < ActiveRecord::Migration
  def change
    add_column :incidents, :status, :string
  end
end
