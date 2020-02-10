class CreateSampleControllers < ActiveRecord::Migration[5.2]
  def change
    create_table :sample_controllers do |t|

      t.timestamps
    end
  end
end
