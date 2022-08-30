class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table(:cars) do |t|
      t.string(:name)
      t.string(:color)
      t.integer(:price)
      t.integer(:miles)
      t.boolean(:domestic)
      t.timestamps
    end
  end
end
