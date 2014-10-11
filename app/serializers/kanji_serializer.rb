class KanjiSerializer < ApplicationSerializer
  attributes :id, :kanji, :kunyomi, :onyomi, :level, :definitions, :tags, :created_at, :updated_at
  has_many :compounds

  def id
    object.id.to_s
  end
end
