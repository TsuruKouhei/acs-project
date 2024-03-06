class AddIndexToTrainings < ActiveRecord::Migration[6.1]
  def change
    add_index :trainings, :category_id
    add_index :trainings, :crop_id
  end
end
