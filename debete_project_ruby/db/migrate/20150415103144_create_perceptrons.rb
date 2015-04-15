class CreatePerceptrons < ActiveRecord::Migration
  def change
    create_table :perceptrons do |t|

      t.timestamps null: false
    end
  end
end
