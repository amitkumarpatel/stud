class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :title
      t.string :phone
      t.references :house
      t.timestamps
    end
  end
end
