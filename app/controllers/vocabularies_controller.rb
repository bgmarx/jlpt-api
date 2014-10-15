class VocabulariesController < ApplicationController
  def index
    if params[:level].present?
      render json: { vocabulary: Vocabulary.where(level: params[:level]).page(params[:page]) }
    else
      render json: { vocabulary: Vocabulary.page(params[:page]) }
    end
  end

  def show
  end
end
