class CreateCompounds < ActiveRecord::Migration
  def change
    create_table :compounds, id: :uuid do |t|
      t.uuid   :kanji_id
      t.string :word
      t.string :kana
      t.string :definitions,   array: true, default: []
      t.string :grammar_type, array: true, default: []

      t.timestamps
    end
  end
end
