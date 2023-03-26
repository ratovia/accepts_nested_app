class CreateEngineerProjectRelations < ActiveRecord::Migration[7.0]
  def change
    create_table :engineer_project_relations do |t|
      t.bigint :engineer_id
      t.bigint :project_id
      t.timestamps
    end
  end
end
