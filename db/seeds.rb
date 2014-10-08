require 'csv'
puts ">>> Importing Level 5 Kanji"

level_5_kanji = File.expand_path "#{File.dirname(__FILE__)}/../db/csv/level-5-kanji.csv"

#<Kanji id: "b7c3603e-fda8-4622-a762-7fe66fe04bef", kanji: "一", kunyomi: ["ひと", "ひと.つ"], onyomi: ["イチ", "イツ"], level: "5", definitions: ["1", "one"], tags: [], created_at: "2014-10-08 02:15:26", updated_at: "2014-10-08 02:16:02">

CSV.foreach(level_5_kanji, headers: false) do |row|
  jis           = "" #row[0].strip
  kanji         = row[1].strip
  stroke_order  = "" #row[2].strip
  onyomi        = row[3].strip.split(",")
  kunyomi       = row[4].strip.split(",")
  definition    = row[5].strip.split(",")

  kan_5 = Kanji.where(:kanji => kanji).first_or_create(level: 5, tags: ["level 5" ], jis: jis, stroke_order: stroke_order, onyomi: onyomi, kunyomi: kunyomi, definitions: definition)
  kan_5.save!
end

puts ">>> Importing Level 5 Kanji Compounds"

level_5_compounds = File.expand_path "#{File.dirname(__FILE__)}/../db/csv/level-5-compounds.csv"

#=> #<Compound id: nil, kanji_id: nil, word: nil, kana: nil, definition: [], grammar_type: [], created_at: nil, updated_at: nil>

CSV.foreach(level_5_compounds, headers: false) do |row|
  kanji_id     = Kanji.find_by_kanji(row[0].strip).id
  word         = row[1].strip
  kana         = row[2].strip
  definition   = row[3].strip.split(",")
  grammar_type = row[4].strip.split(",")

  compound_5 = Compound.where(kanji_id: kanji_id).first_or_create(word: word, kana: kana, definitions: definition, grammar_type: grammar_type)
  compound_5.save!
end
