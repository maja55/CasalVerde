class CreativesController < ApplicationController
# included the next line in every controller for the styling
layout "creative"

  def index
    @question = Question.new
  end
end
