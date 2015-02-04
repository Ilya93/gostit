class CreateStuies < ActiveRecord::Migration
  def change
    create_table :studies do |t|
      t.string :name
      t.text :text
      t.integer :user_id

      t.timestamps
    end
  end
end
