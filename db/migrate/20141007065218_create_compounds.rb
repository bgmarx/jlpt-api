class CreateCompounds < ActiveRecord::Migration
  def change
    create_table :compounds, id: :uuid do |t|
      t.uuid   :kanji_id
      t.string :word
      t.string :kana
      t.string :definition
      t.string :grammar_type

      t.timestamps
    end
  end
end
