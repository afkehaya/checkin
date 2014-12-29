class AddMoreQuestionsToPins < ActiveRecord::Migration
  def change
  	add_column :pins, :question1, :text
  	add_column :pins, :question2, :text
  	add_column :pins, :question3, :text
  	add_column :pins, :question4, :text
  	add_column :pins, :question5, :text
  	add_column :pins, :question6, :text
  end
end
