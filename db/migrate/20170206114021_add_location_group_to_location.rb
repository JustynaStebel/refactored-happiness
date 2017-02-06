class AddLocationGroupToLocation < ActiveRecord::Migration
  def change
    add_reference :locations, :location_group, index: true, foreign_key: true
  end
end
