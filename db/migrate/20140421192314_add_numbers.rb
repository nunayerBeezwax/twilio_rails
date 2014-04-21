class AddNumbers < ActiveRecord::Migration
  def change
    add_column :messages, :num_1, :string
    add_column :messages, :num_2, :string
    add_column :messages, :num_3, :string
    add_column :messages, :num_4, :string
    add_column :messages, :num_5, :string
  end
end
