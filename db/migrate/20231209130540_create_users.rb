class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users, id: false  do |t|
      t.bigint :id, primary_key: true
      t.text :body
      t.integer :user_id

      t.timestamps
    end
  end
end
