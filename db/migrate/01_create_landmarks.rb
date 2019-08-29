class CreateLandmarks < ActiveRecord::Migration
  def change 
    create_table :landmarks do |t|
      t.text :name
      t.integer :figure_id
      t.text :year_completed
    end
  end
end
