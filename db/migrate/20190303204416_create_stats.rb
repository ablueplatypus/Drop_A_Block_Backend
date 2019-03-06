class CreateStats < ActiveRecord::Migration[5.2]
  def change
    create_table :stats do |t|
      t.integer :high_score
      t.integer :line_clear
      t.string :initials

      t.timestamps
    end
  end
end
