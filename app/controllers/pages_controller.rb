class PagesController < ApplicationController
  def index
  end

  def search
    @search_results = Icd10.search params[:q], match: :phrase, misspellings: {edit_distance: 3}, limit: 10
    @codes = @search_results.to_a
    render :index, locals: {codes: @codes}
  end

  def autocomplete
    render json: Icd10.search(params[:term], fields: [{description: :text_start}], limit: 10).map(&:description)
  end
end
