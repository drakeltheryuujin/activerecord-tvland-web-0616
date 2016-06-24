class AddActorsToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :actor, :string
  end
end

