class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title,        null: false
      t.text :description,    null: false
      t.integer :duration,       null: false
      t.date :start_date,     null: false
      t.date :finish_date,    null: false
      t.boolean :finish_task, default: false
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
