class CreateVocabularies < ActiveRecord::Migration
  def change
    create_table :vocabularies, id: :uuid do |t|
      t.string :kana
      t.string :kanji
      t.string :grammar_type
      t.string :level
      t.string :definitions, array: true, default: []
      t.string :tags,        array: true, default: []

      t.timestamps
    end
  end
end
