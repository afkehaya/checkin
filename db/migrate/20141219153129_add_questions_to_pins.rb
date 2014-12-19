class AddQuestionsToPins < ActiveRecord::Migration
  def change
    add_column :pins, :questions, :text
  end
end
