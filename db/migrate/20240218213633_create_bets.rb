class CreateBets < ActiveRecord::Migration[7.0]
  def change
    create_table :bets do |t|
      t.string :home_team
      t.string :away_team
      t.datetime :kick_off

      t.timestamps
    end
  end
end
