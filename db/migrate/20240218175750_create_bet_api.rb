class CreateBetApi < ActiveRecord::Migration[7.0]
  def change
    create_table :bet_apis do |t|
      t.string :name
      t.string :url
      t.jsonb :headers

      t.timestamps
    end
  end
end