class KanjisController < ApplicationController
  before_action :kanji, only: :show

  def index
    render json: Kanji.all, serializer: KanjiSerializer
  end

  def show
    render json: kanji, serializer: KanjiSerializer
  end

  protected
    def kanji
      Kanji.find params[:id]
    end
end
