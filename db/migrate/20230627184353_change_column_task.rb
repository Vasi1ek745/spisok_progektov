class ChangeColumnTask < ActiveRecord::Migration[7.0]
  def change

      change_column_default :tasks, :complit_procent, from: nil, to: 0

  end
end
