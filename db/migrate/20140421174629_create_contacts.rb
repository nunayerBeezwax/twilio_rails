class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :number
      t.string :name
      t.belongs_to :user

      t.timestamps
    end
  end
end
