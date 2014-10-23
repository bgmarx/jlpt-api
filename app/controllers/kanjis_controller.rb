class KanjisController < ApplicationController
  before_action :kanji, only: :show

  def index
    render json: { kanji: { kanji_card: Kanji.page(params[:page]), kanji_page_total: Kanji.all.page(1).total_pages } }
  end

  def show
    render json: kanji, serializer: KanjiSerializer
  end

  protected
    def kanji
      Kanji.find params[:id]
    end
end
