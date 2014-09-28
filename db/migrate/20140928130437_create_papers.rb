class CreatePapers < ActiveRecord::Migration
  def change
    create_table :papers do |t|
      t.string :title
      t.string :publication
      t.date :date

      t.timestamps null: false
    end
  end
end
