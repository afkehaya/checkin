class RemoveQuestionsFromPins < ActiveRecord::Migration
  def change
    remove_column :pins, :questions, :text
    remove_column :pins, :question5, :text
    remove_column :pins, :question6, :text
  end
end
