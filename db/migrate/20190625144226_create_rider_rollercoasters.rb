class CreateRiderRollercoasters < ActiveRecord::Migration[5.1]
  def change
    create_table :rider_rollercoasters do |t|
      t.references :rider, foreign_key: true
      t.references :rollercoaster, foreign_key: true

      t.timestamps
    end
  end
end
