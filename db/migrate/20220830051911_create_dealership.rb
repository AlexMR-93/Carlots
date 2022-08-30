class CreateDealership < ActiveRecord::Migration[5.2]
  def change
    create_table(:dealerships) do |t|
      t.string(:name)
      t.integer(:num_of_cars_on_lot)
      t.boolean(:full)
      t.timestamps
    end
  end
end
