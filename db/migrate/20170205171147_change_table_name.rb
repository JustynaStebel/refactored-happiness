class ChangeTableName < ActiveRecord::Migration
  def change
    rename_table :location_groups_locations, :locations_location_groups
  end
end
