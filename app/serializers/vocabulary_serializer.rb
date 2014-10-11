class VocabularySerializer < ApplicationSerializer
  attrbutes :id, :kana, :type, :level, :definitions, :tags

  def id
    object.id.to_s
  end

end
