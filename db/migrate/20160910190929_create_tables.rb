class CreateTables < ActiveRecord::Migration[5.0]
  def change
    create_table :belts do |t|
			t.string :degree, null: false
			t.string :color, null: false
    end
		
		add_index :belts, [:degree, :color], unique: true
		
    create_table :techniques do |t|
			t.string :name, null: false
			t.text :description, null: false
			t.belongs_to :belt, null: false, index: true
			t.integer :topic, default: 0, null: false
    end
		
    create_table :notes do |t|
			t.text :text, null: false
			t.belongs_to :user, null: false
			t.belongs_to :technique, null: false
    end
		
		add_index :notes, [:user_id, :technique_id]
		
    create_table :belts_users, id: false do |t|
			t.belongs_to :user, null: false, index: true
			t.belongs_to :belt, null: false, index: true
    end
  end
end
