class AddLongNameToTechniques < ActiveRecord::Migration[5.0]
  def change
    add_column :techniques, :long_name, :string, null: true

    Technique.all.each do |technique|
      technique.update!(long_name: technique.name)
    end

    change_column_null :techniques, :long_name, false
  end
end
