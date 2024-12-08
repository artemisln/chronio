class CreateJobs < ActiveRecord::Migration[8.0]
  def change
    create_table :jobs do |t|
      t.string :name
      t.text :description
      t.decimal :salary
      t.string :location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
