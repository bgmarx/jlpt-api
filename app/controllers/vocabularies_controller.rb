class VocabulariesController < ApplicationController
  def index
    render json: { vocabulary: Vocabulary.all }
  end

  def show
  end
end
