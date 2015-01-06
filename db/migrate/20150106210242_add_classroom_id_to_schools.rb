class AddClassroomIdToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :classroom_id, :integer
    add_index :schools, :classroom_id
  end
end
