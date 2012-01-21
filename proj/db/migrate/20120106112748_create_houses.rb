class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :houseno
      t.string :address1
        t.string :address2
          t.string :address3
            t.string :address4
             t.integer :pinno
      t.string :owner

      t.timestamps
    end
  end
end
