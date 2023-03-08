class CreateChallenges < ActiveRecord::Migration[7.0]
  def change
    create_table :challenges do |t|
      t.references :lecture, null: false, foreign_key: true
      t.text :question_text
      t.text :hint_text

      t.timestamps
    end
  end
end
