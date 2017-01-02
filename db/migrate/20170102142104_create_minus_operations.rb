class CreateMinusOperations < ActiveRecord::Migration[5.0]
  def change
    create_table :minus_operations do |t|
      t.string :title
      t.string :description
      t.decimal :sum, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
