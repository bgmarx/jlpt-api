class VocabulariesController < ApplicationController
  def index
    if params[:level].present?
      render json: { vocabulary: { vocabulary_card: Vocabulary.where(level: params[:level]).page(params[:page]), vocab_page_total: Vocabulary.all.page(1).total_pages } }
    else
      render json: { vocabulary: { vocabulary_card: Vocabulary.page(params[:page]), vocab_page_total: Vocabulary.all.page(1).total_pages } }
    end
  end

  def show
  end
end
