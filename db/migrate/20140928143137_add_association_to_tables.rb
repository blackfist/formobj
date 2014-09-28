class AddAssociationToTables < ActiveRecord::Migration
  def change
    add_column :professors, :university_id, :integer
    add_column :papers, :professor_id, :integer
  end
end
