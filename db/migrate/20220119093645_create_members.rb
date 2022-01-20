class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :name, null: false
      t.date :birthday
      t.string :phone_number
      t.integer :gender_id
      t.integer :technical_grade_id
      t.integer :referee_grade_id
      t.date :referee_deadline
      t.integer :insurance_id 
      t.references :team, null: false, foreign_key: true
      t.timestamps
    end
  end
end
