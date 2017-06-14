class CaseController < ApplicationController
  def index
    @cases = Case.order (:title)
  end
end
