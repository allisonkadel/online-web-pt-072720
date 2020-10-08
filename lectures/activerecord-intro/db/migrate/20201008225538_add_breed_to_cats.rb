class AddBreedToCats < ActiveRecord::Migration[5.2]
  def change
    add_column :cats, :breed, :string
  end
end
