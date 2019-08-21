class AddUsername < ActiveRecord::Migration[5.2]
  def change
    # добавление столбца в таблицу БД
    add_column :users, :username, :string
  end
end
