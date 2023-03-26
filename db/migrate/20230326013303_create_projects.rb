class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.bigint :company_id
      t.timestamps
    end
  end
end
