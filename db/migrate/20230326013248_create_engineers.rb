class CreateEngineers < ActiveRecord::Migration[7.0]
  def change
    create_table :engineers do |t|
      t.string :name
      t.bigint :team_leader_id
      t.timestamps
    end
  end
end
