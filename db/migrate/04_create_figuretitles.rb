class CreateFiguretitles < ActiveRecord::Migration
  # raise 'Write CreateLandmarks migration here'
  def change
    create_table :figuretitles do |t|
      t.integer :title_id
      t.integer :figure_id
    end
  end
end
