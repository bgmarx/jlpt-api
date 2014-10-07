class CreateKanjis < ActiveRecord::Migration
  def change
    create_table :kanjis, id: :uuid do |t|
      t.string :kanji
      t.string :kunyomi
      t.string :onyomi
      t.string :level
      t.string :definitions, array: true, default: []
      t.string :tags,        array: true, default: []
      
      t.timestamps
    end
  end
end
