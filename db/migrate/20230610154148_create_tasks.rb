class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :body
      t.integer :complit_procent

      t.timestamps
    end
  end
end
