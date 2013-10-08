class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :Firstname
      t.string :LastName

      t.timestamps
    end
  end
end
