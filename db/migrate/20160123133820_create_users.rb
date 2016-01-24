class CreateUsers < ActiveRecord::Migration
  def change
  	t.integer :score
  	t.string :type
  end
end
