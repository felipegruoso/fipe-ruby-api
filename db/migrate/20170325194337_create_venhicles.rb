class CreateVenhicles < ActiveRecord::Migration[5.0]
  def change
    create_table :venhicles do |t|
      t.string :kind
      t.string :brand
      t.string :model
      t.string :year
      t.float :price

      t.timestamps
    end
  end
end
