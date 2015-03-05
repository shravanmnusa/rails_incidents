class CreateIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
      t.string :issue
      t.string :env
      t.string :region
      t.text :description
      t.text :rootcause
      t.text :resolution

      t.timestamps null: false
    end
  end
end
