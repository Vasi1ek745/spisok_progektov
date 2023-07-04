class CreatePoints < ActiveRecord::Migration[7.0]
  def change
    create_table :points do |t|
      t.string :title
      t.boolean :finished
      t.boolean :unfinished
      t.time :deadline
      t.references :task, null: false, foreign_key: true

      t.timestamps
    end
  end
end
