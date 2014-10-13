class VocabulariesController < ApplicationController
  def index
    if params[:level].present?
      render json: { vocabulary: Vocabulary.where(level: params[:level]) }
    else
      render json: { vocabulary: Vocabulary.all }
    end
  end

  def show
  end
end
