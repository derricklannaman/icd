class Api::V1::Icd10sController < ApplicationController
  before_action :set_icd10

  def show
  end

  private

    def set_icd10
      @icd10_code = Icd10.find_by code: params["code"]
    end
end