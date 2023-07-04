class ChangeColumPoint < ActiveRecord::Migration[7.0]
  def change
    change_column_default :points, :finished, from: nil, to: false
  end
end
