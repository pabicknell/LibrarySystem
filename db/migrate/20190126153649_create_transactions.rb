class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.datetime :return_date
      t.boolean :returned
      t.timestamps
    end
  end
end
