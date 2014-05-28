class RemoveCardNameAndProblemFromCards < ActiveRecord::Migration
  def change
    remove_column :cards, :card_name, :string
    remove_column :cards, :problem, :text
  end
end
