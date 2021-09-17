class CreateRooads < ActiveRecord::Migration[6.0]
  def change
    create_table :rooads do |t|
      t.integer      :status_id,              null: false       
      t.string       :title,               null: false    
      t.text        :detail              
      t.references  :user,                   foreign_key: true 
      t.timestamps
    end
  end
end
