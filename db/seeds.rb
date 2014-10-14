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

#puts ">>> Importing Level 5 Kanji Compounds"
#
#level_5_compounds = File.expand_path "#{File.dirname(__FILE__)}/../db/csv/level-5-compounds.csv"
#
##=> #<Compound id: nil, kanji_id: nil, word: nil, kana: nil, definition: [], grammar_type: [], created_at: nil, updated_at: nil>
#
#CSV.foreach(level_5_compounds, headers: false) do |row|
#  kanji_id     = Kanji.find_by_kanji(row[0].strip).id
#  word         = row[1].strip
#  kana         = row[2].strip
#  definition   = row[3].strip.split(",")
#  grammar_type = row[4].strip.split(",")
#
#  compound_5 = Compound.where(kanji_id: kanji_id).first_or_create(word: word, kana: kana, definitions: definition, grammar_type: grammar_type)
#  compound_5.save!
#end

puts ">>> Importing Level 5 Vocabulary"

level_5_vocab = File.expand_path "#{File.dirname(__FILE__)}/../db/csv/level-5-vocabulary.csv"

#=> #<Compound id: nil, kanji_id: nil, word: nil, kana: nil, definition: [], grammar_type: [], created_at: nil, updated_at: nil>

CSV.foreach(level_5_vocab, headers: true) do |row|
  kana         = row[0].strip
  kanji        = row[1].present? ? row[1].strip : "-"
  grammar_type = row[2].present? ? row[2].gsub(",",", ").strip : " - "
  definition   = row[3].present? ? row[3].gsub(",", ", ").strip.split(", ") : "-"

  vocab_5 = Vocabulary.where(kana: kana).first_or_create(level: 5, kana: kana, kanji: kanji, grammar_type: grammar_type, definitions: definition)
  puts vocab_5.inspect
  vocab_5.save!
end


puts ">>> Importing Level 4 Vocabulary"

level_4_vocab = File.expand_path "#{File.dirname(__FILE__)}/../db/csv/level-4-vocabulary.csv"

CSV.foreach(level_4_vocab, headers: true) do |row|
  kana         = row[0].strip
  kanji        = row[1].present? ? row[1].strip : "-"
  grammar_type = row[2].present? ? row[2].gsub(",",", ").strip : " - "
  definition   = row[3].present? ? row[3].gsub(",", ", ").strip.split(", ") : "-"

  vocab_4 = Vocabulary.where(kana: kana).first_or_create(level: 4, kana: kana, kanji: kanji, grammar_type: grammar_type, definitions: definition)
  puts vocab_4.inspect
  vocab_4.save!
end

puts ">>> Importing Level 2 Vocabulary"

level_2_vocab = File.expand_path "#{File.dirname(__FILE__)}/../db/csv/level-2-vocabulary.csv"

CSV.foreach(level_2_vocab, headers: true) do |row|
  kana         = row[0].present? ? row[0].strip : "-"
  kanji        = row[1].present? ? row[1].strip : "-"
  grammar_type = row[2].present? ? row[2].gsub(",",", ").strip : " - "
  definition   = row[3].present? ? row[3].gsub(",", ", ").strip.split(", ") : "-"

  vocab_2 = Vocabulary.where(kana: kana).first_or_create(level: 2, kana: kana, kanji: kanji, grammar_type: grammar_type, definitions: definition)
  puts vocab_2.inspect
  vocab_2.save!
end
