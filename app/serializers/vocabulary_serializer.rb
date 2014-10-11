class VocabularySerializer < ApplicationSerializer
  attributes :id, :kana, :type, :level, :definitions, :tags

  def id
    object.id.to_s
  end

end
