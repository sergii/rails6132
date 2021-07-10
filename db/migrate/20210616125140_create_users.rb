class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.references :referrer, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
