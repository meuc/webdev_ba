class CreateTableBeltApplications < ActiveRecord::Migration[5.0]
  def up
    create_table :belt_applications do |t|
      t.belongs_to :user, null: false
      t.timestamps
    end

    add_attachment :belt_applications, :picture_proof
  end

  def down
    drop_table :belt_applications
  end
end
