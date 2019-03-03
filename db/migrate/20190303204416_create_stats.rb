class CreateStats < ActiveRecord::Migration[5.2]
  def change
    create_table :stats do |t|
      t.integer :high_score
      t.integer :line_clear
      t.references :user

      t.timestamps
    end
  end
end
