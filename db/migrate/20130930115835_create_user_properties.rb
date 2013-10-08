class CreateUserProperties < ActiveRecord::Migration
  def change
    create_table :user_properties do |t|

      t.timestamps
    end
  end
end
