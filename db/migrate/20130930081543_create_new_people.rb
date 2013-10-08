class CreateNewPeople < ActiveRecord::Migration
  def change
    create_table :new_people do |t|
      t.string :first
      t.string :last

      t.timestamps
    end
  end
end
