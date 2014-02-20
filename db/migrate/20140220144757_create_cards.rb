class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
    	t.string :card_name
    	t.text :project
    	t.text :problem
    	t.text :solution
    	t.string :category
    	t.string :tech
    	t.integer :difficulty
      t.timestamps
    end
  end
end
