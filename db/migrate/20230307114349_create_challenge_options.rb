class CreateChallengeOptions < ActiveRecord::Migration[7.0]
  def change
    create_table :challenge_options do |t|
      t.references :challenge, null: false, foreign_key: true
      t.text :text
      t.boolean :is_correct

      t.timestamps
    end
  end
end
