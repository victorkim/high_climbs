class CreateClimbs < ActiveRecord::Migration[7.1]
  def change
    create_table :climbs do |t|
      t.string :name
      t.text :description
      t.string :grade

      t.timestamps
    end
  end
end
