class Api::V1::Icd10Controller < ApiController
  # before_action :set_icd10

  # def index
  #   # binding.pry
  #   @search_results = Icd10.search(params[:q])

  #   @codes = @search_results.to_a
  #   # render json: @search_results
  #   redirect_to "/", locals: {codes: @codes}
  # end

  def show
  end

  private

    def set_icd10
      @icd10_code = Icd10.find_by code: params["code"]
      # if @icd10_code.nil?
      #   @icd10_code = {
      #     code: 404,
      #     description: "No Code Exist",
      #     code_system: nil,
      #     id: nil
      #   }
      # end
    end
end