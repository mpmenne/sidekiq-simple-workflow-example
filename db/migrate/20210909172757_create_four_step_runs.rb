class CreateFourStepRuns < ActiveRecord::Migration[6.1]
  def change
    create_table :four_step_runs do |t|

      t.timestamps
    end
  end
end
