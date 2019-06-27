class CreateFigurestitles < ActiveRecord::Migration
  # raise 'Write CreateLandmarks migration here'
  def change
    create_table :figurestitles do |t|
      t.integer :title_ids
      t.integer :figure_ids
    end
  end
end
