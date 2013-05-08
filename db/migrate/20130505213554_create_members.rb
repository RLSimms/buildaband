class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.integer :band_id
      t.integer :musician_id
    end
  end
end
