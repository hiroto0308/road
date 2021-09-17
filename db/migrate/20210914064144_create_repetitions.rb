class CreateRepetitions < ActiveRecord::Migration[6.0]
  def change
    create_table :repetitions do |t|
      t.string      :name,                null: false       
      t.integer      :period,               null: false    
      t.string       :memo               
      t.references  :rooad,                   foreign_key: true 
      t.timestamps
    end
  end
end
