class CreateKanjis < ActiveRecord::Migration
  def change
    create_table :kanjis, id: :uuid do |t|
      t.string   :kanji
      t.string   :kunyomi, array: true, default: []
      t.string   :onyomi,  array: true, default: []
      t.integer  :level
      t.string   :definitions, array: true, default: []
      t.string   :tags,        array: true, default: []
      t.integer  :stroke_order
      t.integer  :jis
      t.datetime :compounds_updated_at

      t.timestamps
    end
  end
end
