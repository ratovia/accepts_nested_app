class CreateTeamLeaders < ActiveRecord::Migration[7.0]
  def change
    create_table :team_leaders do |t|
      t.string :name
      t.bigint :company_id
      t.timestamps
    end
  end
end
